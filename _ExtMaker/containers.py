from __future__ import print_function
import os
from distutils import log
from keyword import iskeyword
from collections import defaultdict

from .includes.glad_related import *
from .includes.gl import *

UNHANDLED_GL_TYPES = [None, 'GLhandleARB', 'GLsync']


class function:
    def __init__(self, func, types):
        self.name = func.proto.name
        self.ret = func.proto.ret
        self.params = [param(p, types) for p in func.params]

    def __repr__(self):
        return '{} {}({})'.format(self.ret, self.name, ', '.join([str(p) for p in self.params]))


class param:
    def __init__(self, p, types):
        self.name = self.safeIfKey(p.name)
        self.const = p.type.is_const
        self.pointerLen = p.type.is_pointer
        self.type = types.get(p.type.type)

    def __repr__(self):
        return '{}{}{} {}'.format('const ' if self.const else '', self.type, '*' * self.pointerLen, self.name)

    @staticmethod
    def safeIfKey(pName):
        if iskeyword(pName):
            return '_' + pName + '_'
        else:
            return pName


class pxd:
    def __init__(self, funcs, types, dest, announce, api):
        pxdPath = os.path.join(dest, 'c{}.pxd'.format(api))
        announce('Generating {}...'.format(pxdPath), log.INFO)

        with open(pxdPath, 'w') as dest:
            print('from libc.stdint cimport *', file=dest)
            print('cdef extern from \'glad{}.h\' nogil:'.format('_' + api if api != 'gl' else ''), file=dest)
            if api == 'gl':
                print('    # GLAD RELATED >>\n{}'.format(GLAD_RELATED_PXD), file=dest)

            print('    # TYPES >>\n', file=dest)
            print('    ctypedef bint bool', file=dest)
            print('    ctypedef bint BOOL', file=dest)
            for t in types.items():
                if 'struct' in t[1]:
                    continue
                print('    ctypedef {} {}'.format(t[1], t[0].replace('(void)', '()')), file=dest)

            print('\n    # FUNCTIONS >>\n', file=dest)
            sortedFuncKeys = sorted(funcs)
            for fk in sortedFuncKeys:
                f = funcs[fk]
                nf = function(f, types)
                discard = False
                if nf.ret.type in UNHANDLED_GL_TYPES:
                    continue
                for p in nf.params:
                    if p.type in UNHANDLED_GL_TYPES:
                        discard = True
                        break
                if not discard:
                    print('    cdef {}'.format(nf), file=dest)


class pyx:
    def __init__(self, funcs, enums, types, baseTypes, dest, announce, api, useNoGil):
        self.api = 'c' + api
        self.types = types
        self.baseTypes = baseTypes
        self.dest = dest
        self.useNoGil = useNoGil
        self.converters = {}
        pyxPath = os.path.join(dest, '{}.pyx'.format(self.api[1:]))
        announce('Generating {}...'.format(pyxPath), log.INFO)
        with open(pyxPath, 'w') as dest:
            # Cython specifics >>
            print('#cython: boundscheck=False', file=dest)
            print('#cython: embedsignature=True', file=dest)
            print('#cython: c_string_type=str', file=dest)
            print('#cython: c_string_encoding=ascii', file=dest)

            # cImports >>
            print('cimport {}'.format(self.api), file=dest)
            print('from libc.stdint cimport *', file=dest)
            # print('print(\'lib\', LIBRARY)', file=dest)

            print('\n# TYPES >>\n', file=dest)
            print('ctypedef bint bool', file=dest)
            print('ctypedef bint BOOL', file=dest)
            print(voidp_typedef, file=dest)

            # Rest >>
            if api == 'gl':
                print('\n# GLAD RELATED >>\n{}'.format(GLAD_RELATED_PYX.format(prefix=self.api)), file=dest)

            print('\n# FUNCTIONS >>', file=dest)
            sortedFuncKeys = sorted(funcs)
            for fk in sortedFuncKeys:
                f = funcs[fk]
                nf = function(f, types)
                sign = self.buildPyxFunc(nf)
                if sign is not None:
                    print('\n{}'.format(sign), file=dest)

            print('\n#ENUMS >>', file=dest)
            eGroups = defaultdict(list)
            for e in enums:
                eGroups[e.group or api.upper()].append((e.name, e.value))
            for k in eGroups.keys():
                enumList = eGroups[k]
                print('\nclass {}:'.format(k), file=dest)
                for e in enumList:
                    fev = e[1]
                    if fev.startswith('(('):
                        fev = fev.strip('()')
                        fev = fev.strip('()')
                        fev = fev.replace(')', '>')
                        fev = fev.replace('(', '')
                        fev = '(<{})'.format(fev)
                    print('    {} = {}'.format(e[0], fev), file=dest)

            for c in self.converters.values():
                print('', file=dest)
                print(repr(c), file=dest)

    def buildPyxFunc(self, func):
        def getBaseType(p):
            base = self.baseTypes.get(p.type)
            ctype = self.types.get(p.type)
            if base:
                rType = base
            elif ctype:
                rType = ctype
            else:
                if p.type.startswith('GL'):
                    rType = None
                else:
                    rType = p.type

            if rType is not None and rType == 'void':
                try:
                    plen = p.is_pointer
                except AttributeError:
                    plen = p.pointerLen
                if plen > 0:
                    rType = 'voidp'
            return rType

        def paramTypeResolve(p):
            return p[0] + ' ' if p[0] is not None else ''

        sign = []
        callParams = []
        pythonParams = []

        # Collect parameter types and names
        hasRet = not (func.ret.type == 'void')
        if getBaseType(func.ret) is None:
            return None

        for p in func.params:
            if p.type is None:
                return None
            else:
                bType = getBaseType(p)
                if p.pointerLen > 0:
                    if p.pointerLen == 1:
                        viewCode = '[::1]' if bType != 'voidp' else ''
                        pythonParams.append((bType + viewCode, p.name))
                        callParams.append('&{}[0]'.format(p.name))
                    else:
                        pythonParams.append((bType + '[:]', p.name))
                        callParams.append('<{}{}**>&{}[0]'.format('const ' if p.const else '',
                                                                  bType,
                                                                  p.name))
                else:
                    callParams.append(p.name)
                    pythonParams.append((bType, p.name))

        # Build Function body
        sign.append('def {name}({params}):'.format(name=func.name,
                                                   params=', '.join([paramTypeResolve(p) +
                                                                     p[1] for p in pythonParams])))

        if hasRet:
            bType = getBaseType(func.ret)
            if func.ret.is_pointer == 1:
                sign.append('    cdef {}{}* ret'.format('const ' if func.ret.is_const else '', bType))
            elif func.ret.is_pointer > 1:
                raise NotImplementedError('Pointer to pointer return type is not implemented. Please fill a bug '
                                          'report.')
            else:
                sign.append('    cdef {}{} ret'.format('const ' if func.ret.is_const else '', bType))

        # The actual call
        noGil = '    with nogil:\n    ' if self.useNoGil else ''
        sign.append('{noGil}    {ret}{prefix}{funcName}({cParams})'.format(noGil=noGil,
                                                                           ret='ret = ' if hasRet else '',
                                                                           prefix=self.api + '.',
                                                                           funcName=func.name,
                                                                           cParams=', '.join(callParams)))

        if hasRet:
            sign.append('    return ret')
        return '\n'.join(sign)
