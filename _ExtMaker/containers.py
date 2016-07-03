from __future__ import print_function
import os
from distutils import log
from keyword import iskeyword
from collections import defaultdict

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
    GLAD_RELATED = """
    cdef struct gladGLversionStruct:
        int major
        int minor

    ctypedef void* (* GLADloadproc)(const char *name)
    cdef gladGLversionStruct GLVersion
    cdef int gladLoadGL()
    cdef int gladLoadGLLoader(GLADloadproc)
    """

    def __init__(self, funcs, types, dest, announce, api):
        pxdPath = os.path.join(dest, 'c{}.pxd'.format(api))
        announce('Generating {}...'.format(pxdPath), log.INFO)

        with open(pxdPath, 'w') as dest:
            print('from libc.stdint cimport *', file=dest)
            print('cdef extern from \'glad.h\' nogil:', file=dest)
            print('    # GLAD RELATED >>\n{}'.format(self.GLAD_RELATED), file=dest)

            print('    # TYPES >>\n', file=dest)
            # print('ctypedef bint bool')
            for t in types.items():
                if 'struct' in t[1]:
                    continue
                print('    ctypedef {} {}'.format(t[1], t[0]), file=dest)

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
    GLAD_RELATED = """
class gladGLversionStruct:
    def __init__(self, major, minor):
        self.major = major
        self.minor = minor

# GLVersion = gladGLversionStruct()

def loadGL():
    return {prefix}.gladLoadGL()

    """

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
            print('from libcpp.vector cimport vector', file=dest)
            print('from libc.stdint cimport *', file=dest)
            print('from cpython.ref cimport PyObject', file=dest)
            # print('print(\'lib\', LIBRARY)', file=dest)

            # Rest >>
            print('\n# GLAD RELATED >>\n{}'.format(self.GLAD_RELATED.format(prefix=self.api)), file=dest)

            print('# FUNCTIONS >>', file=dest)
            sortedFuncKeys = sorted(funcs)
            for fk in sortedFuncKeys:
                f = funcs[fk]
                nf = function(f, types)
                sign = self.buildPyxFunc(nf)
                if sign is not None:
                    print('\n{}'.format(sign), file=dest)

            print('\n#ENUMS >>\n', file=dest)
            eGroups = defaultdict(list)
            for e in enums:
                eGroups[e.group or 'GL'].append((e.name, e.value))
            for k in eGroups.keys():
                enumList = eGroups[k]
                print('\nclass {}:'.format(k), file=dest)
                for e in enumList:
                    print('    {} = {}'.format(e[0], e[1]), file=dest)

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
                rType = 'int'
            return rType

        def paramTypeResolve(p):
            return p[0] + ' ' if p[0] is not None else ''

        sign = []
        locals = []
        returns = []
        # byrefParams = []
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
                    if p.pointerLen < 2:
                        pythonParams.append((bType + '[:]', p.name))
                        callParams.append('&{}[0]'.format(p.name))
                    else:
                        pythonParams.append((bType + '[:]', p.name))
                        callParams.append('<{}**>&{}[0]'.format(bType, p.name))
                else:
                    callParams.append(p.name)
                    pythonParams.append((bType, p.name))

        # Build Function body
        sign.append('def {name}({params}):'.format(name=func.name,
                                                   params=', '.join([paramTypeResolve(p) +
                                                                     p[1] for p in pythonParams])))

        # for p in locals:
        #     bType = getBaseType(p)
        #     converter = self.converters.get(bType)
        #     assert isinstance(converter, self.pointerConverter)
        #     sign.append('    cdef {ret} {pName}_v = {name}({pName})'.format(ret=converter.converter_ret,
        #                                                                      name=converter.converter_name,
        #                                                                      pName=p.name))

        if hasRet:
            bType = getBaseType(func.ret)
            if func.ret.is_pointer == 1:
                sign.append('    cdef {}* ret'.format(bType))
            elif func.ret.is_pointer > 1:
                raise NotImplementedError('Pointer to pointer return type is not implemented. Please fill a bug '
                                          'report.')
            else:
                sign.append('    cdef {} ret'.format(bType))

        # The actual call
        noGil = '    with nogil:\n    ' if self.useNoGil else ''
        sign.append('{noGil}    {ret}{prefix}{funcName}({cParams})'.format(noGil=noGil,
                                                                           ret='ret = ' if hasRet else '',
                                                                           prefix=self.api + '.',
                                                                           funcName=func.name,
                                                                           cParams=', '.join(callParams)))

        # for p in returns:
        #     bType = getBaseType(p)
        #     converter = self.converters.get(bType)
        #     assert isinstance(converter, self.pointerConverter)
        #     sign.append('    {updtrName}({pName}_v, {pName})'.format(updtrName=converter.updater_name,
        #                                                              pName=p.name))

        if hasRet:
            sign.append('    return ret')
        return '\n'.join(sign)
