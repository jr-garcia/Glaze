from __future__ import print_function

import os
from collections import defaultdict
from distutils import log

from _ExtMaker.ObjectTypes import function
from _ExtMaker.includes.gl import voidp_typedef
from _ExtMaker.includes.glad_related import GLAD_RELATED_PYX


class PyxMaker:
    def __init__(self, funcs, enums, types, baseTypes, dest, announce, api):
        self.announce = announce
        self.enums = enums
        self.funcs = funcs
        self.c_apiName = 'c' + api.upper()
        self.apiName = api.upper()
        self.types = types
        self.baseTypes = baseTypes
        self.destinyPath = dest
        self.functionNames = []

    def writeAll(self):
        pyxPath = os.path.join(self.destinyPath, '{}.pyx'.format(self.apiName))
        self.announce('Generating {}...'.format(pyxPath), log.INFO)
        with open(pyxPath, 'w') as pyxFile:
            # Cython specifics >>
            print('#cython: boundscheck=False', file=pyxFile)
            print('#cython: wraparound=False', file=pyxFile)
            print('#cython: initializedcheck=False', file=pyxFile)
            print('#cython: nonecheck=False', file=pyxFile)
            print('#cython: always_allow_keywords=False', file=pyxFile)
            print('#cython: infer_types=False', file=pyxFile)
            print('#cython: nonecheck=False', file=pyxFile)
            print('#cython: optimize.unpack_method_calls=False', file=pyxFile)

            print('#cython: embedsignature=True', file=pyxFile)
            print('#cython: c_string_type=str', file=pyxFile)
            print('#cython: c_string_encoding=ascii', file=pyxFile)

            # cImports >>
            print('from glaze cimport {}'.format(self.c_apiName), file=pyxFile)
            print('from libc.stdint cimport *', file=pyxFile)
            print('from libcpp.vector cimport vector', file=pyxFile)
            # print('print(\'lib\', LIBRARY)', file=pyxFile)

            print('\n# TYPES >>\n', file=pyxFile)
            print('ctypedef bint bool', file=pyxFile)
            print('ctypedef bint BOOL', file=pyxFile)
            print(voidp_typedef, file=pyxFile)

            # GlobalVars >>
            print('\n# GLOBALS >>\n', file=pyxFile)
            print('noGil = True', file=pyxFile)

            # Rest >>
            if self.apiName == 'GL':
                print('\n# GLAD RELATED >>\n{}'.format(GLAD_RELATED_PYX.format(prefix=self.c_apiName)), file=pyxFile)

            print('\n# FUNCTIONS >>', file=pyxFile)
            sortedFuncKeys = sorted(self.funcs)
            for fk in sortedFuncKeys:
                f = self.funcs[fk]
                nf = function(f, self.types)
                sign = self._buildPyxFunc(nf)
                if sign is not None:
                    print('\n{}'.format(sign), file=pyxFile)

            print('\n#ENUMS >>', file=pyxFile)
            eGroups = defaultdict(list)
            for e in self.enums:
                eGroups[e.group or self.apiName].append((e.name, e.value))
            for k in eGroups.keys():
                enumList = eGroups[k]
                print('\n# {}:'.format(k), file=pyxFile)
                for e in enumList:
                    fev = e[1]
                    if fev.startswith('(('):
                        fev = fev.strip('()')
                        fev = fev.strip('()')
                        fev = fev.replace(')', '>')
                        fev = fev.replace('(', '')
                        fev = '(<{})'.format(fev)
                    print('{} = {}'.format(e[0], fev), file=pyxFile)

    def _buildPyxFunc(self, func):
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
        vectorLines = []

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
                        pythonParams.append(('list', p.name))
                        vectorLines.append('    cdef vector[{ptype}*] cvec_{name} = {name}'.format(
                                           ptype=bType, name=p.name))
                        if not p.const:
                            raise NotImplementedError('passing non-constant pointers to pointer '
                                                      'is not implemented yet (Function {}).'.format(func.name))
                        callParams.append('<{}{}**>&cvec_{}[0]'.format('const ' if p.const else '', bType, p.name))
                else:
                    callParams.append(p.name)
                    pythonParams.append((bType, p.name))

        # Build Function body ---->

        # First, Python's calling signature:
        sign.append('def {name}({params}):'.format(name=func.name, params=', '.join(
                [paramTypeResolve(p) + p[1] for p in pythonParams])))

        # Second, create the return object, if any:
        if hasRet:
            bType = getBaseType(func.ret)
            if func.ret.is_pointer == 1:
                sign.append('    cdef {}{}* ret'.format('const ' if func.ret.is_const else '', bType))
            elif func.ret.is_pointer > 1:
                raise NotImplementedError('Pointer to pointer return type is not implemented. Please fill a bug '
                                          'report if you need it.(Function {})'.format(func.name))
            else:
                sign.append('    cdef {}{} ret'.format('const ' if func.ret.is_const else '', bType))

        # Third, write down the actual 'C' call:
        callStr = '{ret}{prefix}{funcName}({cParams})'.format(ret='ret = ' if hasRet else '',
                                                              prefix=self.c_apiName + '.', funcName=func.name,
                                                              cParams=', '.join(callParams))
        sign.append('{vectorLines}'
                    '    if noGil:\n'
                    '        with nogil:\n'
                    '            {callStr}\n'
                    '    else:\n'
                    '        {callStr}'.format(vectorLines='\n'.join(vectorLines) + '\n' if len(vectorLines) > 0
                                               else '', callStr=callStr))

        # Finally, add the 'return' command with the 'ret' object:
        if hasRet:
            sign.append('    return ret')
        return '\n'.join(sign)
