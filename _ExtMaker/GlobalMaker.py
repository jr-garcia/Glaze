import sys
import os
from distutils import log
from collections import OrderedDict, defaultdict
from requests import get

from glad.__main__ import main as gladmain
from glad.lang.common.generator import Generator
from glad.spec import SPECS
from glad.opener import URLOpener
from glad.lang.common.loader import BaseLoader

from .PxdMaker import makePXD
from .PyxMaker import PyxMaker, writeGladLoad
from .includes.utils import *

SPECSURL = 'https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/'
specsPath = ''
gladPath = ''
force = False

class MyLoader(BaseLoader):
    pass


class Maker:
    def __init__(self, destPath, specsPathParent, gladPathParent, api, version, announce, extensions=None,
                 profile=None, forceDL=None):
        global specsPath, gladPath, force
        specsPath = specsPathParent
        gladPath = gladPathParent
        force = bool(forceDL)
        self.destPath = destPath
        self.spec = get_spec(api, announce)
        self.api = api
        self.announce = announce
        self.extensions = extensions
        self.profile = profile
        self.myloader = MyLoader(version, True)
        self.version = version
        self.gen = MyGenerator(self.destPath, self.spec, version, self.myloader, self.extensions)

    def create(self):
        self.gen.generate()
        self._createCStuff()
        self._createPXD()
        versionsStrings = []
        destDir = os.path.join(self.destPath, self.api.upper())
        if not os.path.exists(destDir):
            os.mkdir(destDir)
        # Initialize __init__.py
        apiInitPath = os.path.join(destDir, '__init__.py')
        with open(apiInitPath, 'w'):
            pass
        # Write api version's pyx files
        for version in self.gen.versions:
            versionsStrings.append(version.name)
            with open(apiInitPath, 'a') as initFile:
                print('from .{} import *'.format(version.name), file=initFile)
            self._createPYX(version)
        for version in self.gen.extensions_sets.values():
            versionsStrings.append(version.name)
            with open(apiInitPath, 'a') as initFile:
                print('from .ext_{} import *'.format(version.name), file=initFile)
            self._createPYX(version)

        # write 'utils' files and imports
        self.createUtilsPxd()
        self.createUtilsPyx()
        # Write down Glad stuff
        writeGladLoad(self.announce, apiInitPath, versionsStrings)
        with open(apiInitPath, 'a') as initFile:
            print('    return True', file=initFile)

    def createUtilsPyx(self):
        utilsPyxPath = os.path.join(self.destPath, 'utils.pyx')
        with open(utilsPyxPath, 'w') as pyxFile:
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

            print(sizeof_str, file=pyxFile)
            print(getVoidP_str, file=pyxFile)

    def createUtilsPxd(self):
        utilsPxdPath = os.path.join(self.destPath, 'utils.pxd')
        with open(utilsPxdPath, 'w') as pxdFile:
            print(voidp_typedef, file=pxdFile)
            print(voidpable_typedef, file=pxdFile)
            print(sizeable_typedef, file=pxdFile)
            print(getVoidP_str_def, file=pxdFile)

    def _createCStuff(self):
        global specsPath, gladPath
        os.chdir(specsPath)
        argList = []
        if self.profile:
            argList.append('--profile={}'.format(self.profile))

        verList = list(self.version.values())[0]
        if len(verList) > 0:
            argList.append('--api={}={}.{},'.format(self.api, verList[0], verList[1]))

        if self.extensions:
            argList.append('--extensions={}'.format(','.join(self.extensions)))

        argList.append('--spec={}'.format(self.api))
        argList.append('--out-path={}'.format(gladPath))
        argList.append('--generator=c')
        argList.append('--omit-khrplatform')
        argList.append('--local-files')
        argList.append('--quiet')

        sys.argv[1:] = argList

        gladmain()

    def _createPXD(self):
        makePXD(self.gen.functions, self.gen.types, self.destPath, self.announce, self.api, self.gen.enums)

    def _createPYX(self, version):
        maker = PyxMaker(version.functions, version.enums, self.gen.types, self.gen.baseTypes,
                         self.destPath, self.announce, self.api, version.name)
        maker.writeAll()


class MyGenerator(Generator):
    def __init__(self, path, spec, api, loader, extensions=None):
        self.baseTypes = {}
        self.functions = {}
        self.enums = []
        self.extensions_sets = defaultdict(ExtensionsSet)
        self.versions = []
        self.types = OrderedDict()
        super(MyGenerator, self).__init__(path, spec, api, extensions, loader=loader, local_files=True,
                                          omit_khrplatform=True)

    def generate_header(self):
        pass

    def generate_extensions(self, extensions, enums, functions):
        pass

    def generate_loader(self, features, extensions):
        funcs = set()
        enums = set()

        for feature in features.items():
            for version in feature[1]:
                self.versions.append(Version(version))
                funcs.update(version.functions)
                enums.update(version.enums)

        for extlist in extensions.items():
            for version in extlist[1]:
                funcs.update(version.functions)
                enums.update(version.enums)
                start = version.name.find('_', 1) + 1
                stop = version.name.find('_', start)
                group = version.name[start: stop]
                self.extensions_sets[group].add(version)
                self.extensions_sets[group].name = group

        self.functions = {}
        for f in funcs:
            self.functions[str(f)] = f
        self.enums = enums

    def generate_types(self, types):
        for ttype in types:
            if ttype.is_preprocessor is True:
                print ('>>\n{} {} {}<<\n'.format(ttype.name, ttype.api, ttype.raw))
                pass
            elif 'APIENTRY' in ttype.raw:
                print ('>>\n{} {} {}<<\n'.format(ttype.name, ttype.api, ttype.raw))
                pass
            else:
                stype = ttype.raw.split(' ')
                istypedef = stype.pop(0) == 'typedef'
                if not istypedef:
                    # print ('>>\n{} {} {}<<\n'.format(ttype.name, ttype.api, ttype.raw))
                    continue
                name = stype.pop(len(stype) - 1)
                name = name.replace(';', '')
                pieces = [piece for piece in stype]
                realType = ' '.join(pieces)
                baseType = self.types.get(realType, None)
                topType = baseType
                while baseType is not None:
                    topType = baseType
                    baseType = self.types.get(baseType, None)

                self.types[name] = realType
                self.baseTypes[name] = topType

    def generate_features(self, features):
        pass


def saveFromRemote(xmlName, dest):
    apiURL = SPECSURL + xmlName
    response = get(apiURL)
    assert response.status_code == 200
    if isinstance(response.content, bytes):
        cont = response.content.decode()
    elif hasattr(response.content, 'encode'):
        cont = response.content.encode('ascii')
    else:
        cont = response.content

    with open(dest, 'w') as f:
        f.write(cont)


def get_spec(value, announce):
    global specsPath, force

    if value not in SPECS:
        announce(RuntimeError('Unknown specification: {}'.format(value)), log.ERROR)
        exit(1)

    xmlName = value + '.xml'
    spec_cls = SPECS[value]
    xmlPath = os.path.join(specsPath, xmlName)

    if not os.path.exists(xmlPath) or force:
        announce('Retrieving \'{}\' specification from SVN...'.format(value), log.INFO)
        saveFromRemote(xmlName, xmlPath)
    return spec_cls.from_file(xmlPath)


class Version:
    def __init__(self, version):
        self.name = version.name
        self.functions = {}
        for f in version.functions:
            self.functions[str(f)] = f
        self.enums = list(version.enums)

    def __repr__(self):
        return self.name


class ExtensionsSet:
    def __init__(self):
        self.name = ''
        self.functions = {}
        self.enums = set()

    def add(self, extension):
        for f in extension.functions:
            self.functions[str(f)] = f
        self.enums.update(extension.enums)
