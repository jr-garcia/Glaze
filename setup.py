from Cython.Build import cythonize
from setuptools import setup, Extension
from distutils.cmd import Command
from setuptools.command.build_ext import build_ext
from setuptools.command.install import install
from distutils import log
from sys import platform
import os

setupPath = os.path.abspath(os.path.dirname(__file__))
GLAZEPATH = './glaze/'
glazeAbsPath = os.path.abspath(os.path.join(setupPath, GLAZEPATH))
SPECSPATH = './specs'
specsAbsPath = os.path.abspath(os.path.join(setupPath, SPECSPATH))
gladAbsPath = os.path.abspath(os.path.join(glazeAbsPath, 'glad'))

included_dirs = [GLAZEPATH, gladAbsPath]

if platform == 'win32':
    glLib = 'openGL32'
    rldirs = []
    extraArgs = ['/EHsc']
elif 'linux' in platform:
    glLib = 'GL'
    rldirs = ["$ORIGIN"]
    extraArgs = ["-w", "-O3", '-l.', "-std=c++11", '-DGL_GLEXT_PROTOTYPES']
else:
    glLib = 'OpenGL'
    rldirs = []
    extraArgs = []


class regen(Command):
    user_options = [('apis=', None, 'List of apis to generate(gl, egl, wgl, glx)'
                                    'separated by \',\''),
                    ('maxver=', None, 'Dictionary of api version to generate for each api as '
                                      'api=major.minor (Defaults to latest if omitted)'),
                    ('loader=', None, 'Library to use as loader. Example: SDL'),
                    ('extensions=', None, 'List of extensions to include,'
                                          'separated by \',\'. If empty, all extensions will be'
                                          'added to definition'),
                    ('avoidnogil', None, 'Exclude \'with nogil:\' statements for OpenGL Calls. If ommited, '
                                         'all gl calls will be done releasing the gil'),
                    ('profile', None, 'OpenGL profile {core,compatibility} (defaults to compatibility)')
                    ]

    def __init__(self, dist):
        Command.__init__(self, dist)
        self.versions = {}

    def initialize_options(self):
        self.apis = None
        self.maxver = None
        self.loader = None
        self.extensions = None
        self.avoidnogil = None
        self.profile = None

    def finalize_options(self):
        assert self.apis is not None, 'Api must be one or more of [gl, egl, wgl, glx]'
        if self.apis is not None:
            self.apis = self.apis.split(',')

        if self.maxver is not None:
            self.maxver = self.maxver.split(',')
            for api in self.maxver:
                a, v = api.split('=')
                sv = v.split('.')
                self.versions[a] = (int(sv[0]), int(sv[1]))

        if self.extensions is not None:
            self.extensions = str(self.extensions).split(',')

    def run(self):
        from _ExtMaker.GlobalMaker import Maker

        def regenApi(api, version):
            stuff = Maker(glazeAbsPath, specsAbsPath, gladAbsPath, api, {api: version}, self.announce, self.extensions)
            stuff.create(self.avoidnogil)

        for api in self.apis:
            regenApi(api, self.versions.get(api))
            apiPath = os.path.join(glazeAbsPath, api)
            cythonizables = []
            for file in os.listdir(apiPath):
                file = os.path.join(apiPath, file)
                if os.path.isfile(file):
                    if os.path.splitext(file)[1] == '.pyx':
                        cythonizables.append(file)

            cythonize(cythonizables,
                      language='c++',
                      # compile_time_env={'LIBRARY': b'default'}
                      )

        self.announce('Done. Now you can build_ext / install', log.INFO)


data = []
sources = []


class build_ext_pre(build_ext):
    def __init__(self, dist):
        for file in os.listdir(glazeAbsPath):
            file = os.path.join(glazeAbsPath, file)
            if os.path.isfile(file):
                if os.path.splitext(file)[1] == '.cpp':
                    sources.append(file)

        for file in os.listdir(gladAbsPath):
            file = os.path.join(gladAbsPath, file)
            if os.path.isfile(file) and os.path.splitext(file)[1] == '.c':
                sources.append(file)

        build_ext.__init__(self, dist)


class install_pre(install):
    def __init__(self, dist):
        for file in os.listdir(glazeAbsPath):
            file = os.path.join(glazeAbsPath, file)
            if os.path.isfile(file):
                if os.path.splitext(file)[1] == '.pxd':
                    data.append(file)

        install.__init__(self, dist)


setup(
    name="glaze",
    packages=["glaze"],
    ext_modules=([
        Extension('*',  # name
                  sources,  # sources list
                  libraries=["dl", glLib],
                  include_dirs=included_dirs,
                  runtime_library_dirs=rldirs,
                  extra_compile_args=extraArgs,
                  language="c++")]),

    cmdclass={'regen': regen, 'build_ext': build_ext_pre, 'install': install_pre},
    # requires=['requests', 'Cython', 'glad'],
    data_files=data,
)
