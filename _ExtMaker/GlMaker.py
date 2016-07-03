import sys
import os
from distutils import log
from collections import OrderedDict
from requests import get

from glad.__main__ import main as gladmain
from glad.lang.common.generator import Generator
from glad.spec import SPECS
from glad.opener import URLOpener
from glad.lang.common.loader import BaseLoader

from .containers import pxd, pyx

SPECSURL = 'https://cvs.khronos.org/svn/repos/ogl/trunk/doc/registry/public/api/'
specsPath = ''
gladPath = ''


class MyLoader(BaseLoader):
    pass


class Maker:
    def __init__(self, destPath, specsPathParent, gladPathParent, api, version, announce, extensions=None,
                 profile=None):
        global specsPath, gladPath
        self.destPath = destPath
        specsPath = specsPathParent
        gladPath = gladPathParent
        self.spec = get_spec(api, announce)
        self.api = api
        self.announce = announce
        self.extensions = extensions
        self.profile = profile
        self.myloader = MyLoader(version, True)
        self.version = version
        self.gen = MyGenerator(self.destPath, self.spec, version, self.myloader, self.extensions)

    def create(self, excludeGil):
        self.gen.generate()
        self._createCStuff()
        self._createPXD()
        self._createPYX(False if excludeGil else True)

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
        pxd(self.gen.functions, self.gen.types, self.destPath, self.announce, self.api)

    def _createPYX(self, includeGil):
        pyx(self.gen.functions, self.gen.enums, self.gen.types, self.gen.baseTypes,
            self.destPath, self.announce, self.api, includeGil)


class MyGenerator(Generator):
    def __init__(self, path, spec, api, loader, extensions=None):
        self.baseTypes = {}
        self.functions = {}
        self.enums = []
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

        def fillStuff(_features):
            for feature in _features.items():
                for version in feature[1]:
                    funcs.update(version.functions)
                    enums.update(version.enums)

        fillStuff(features)

        for ext in extensions.items():
            fillStuff({ext[0]: ext[1]})

        self.functions = {}
        for f in funcs:
            self.functions[str(f)] = f
        self.enums = enums

    def generate_types(self, types):
        for ttype in types:
            if (ttype.is_preprocessor is True) or ('APIENTRY' in ttype.raw):
                pass
            else:
                stype = ttype.raw.split(' ')
                istypedef = stype.pop(0) == 'typedef'
                if not istypedef:
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
    global specsPath

    if value not in SPECS:
        raise argparse.ArgumentTypeError('Unknown specification')

    xmlName = value + '.xml'
    spec_cls = SPECS[value]
    xmlPath = os.path.join(specsPath, xmlName)

    if not os.path.exists(xmlPath):
        announce('retrieving \'{}\' specification from SVN...'.format(value), log.INFO)
        saveFromRemote(xmlName, xmlPath)
    return spec_cls.from_file(xmlPath)
