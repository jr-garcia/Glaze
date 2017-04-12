from setuptools import setup, Extension
from distutils.cmd import Command
from distutils import log
from sys import platform
import os
from multiprocessing import cpu_count

setupPath = os.path.abspath(os.path.dirname(__file__))
GLAZEPATH = './glaze/'
glazeAbsPath = os.path.abspath(os.path.join(setupPath, GLAZEPATH))
SPECSPATH = './specs'
specsAbsPath = os.path.abspath(os.path.join(setupPath, SPECSPATH))
gladAbsPath = os.path.abspath(os.path.join(glazeAbsPath, 'glad'))
apiList = ['GL', 'EGL', 'GLX', 'WGL']

included_dirs = [glazeAbsPath, gladAbsPath]

if platform == 'win32':
    libraries = ['openGL32']
    # rldirs = []
    extraArgs = ['/EHsc']
elif 'linux' in platform:
    libraries = ['GL', "dl"]
    # rldirs = ["$ORIGIN"]
    extraArgs = ["-w", "-O0", '-DGL_GLEXT_PROTOTYPES',
                 '-fno-var-tracking', '-fno-var-tracking-assignments',
                 # "-std=c++11"
                 ]
else:
    libraries = ['OpenGL']
    # rldirs = []
    extraArgs = []


class regen(Command):
    user_options = [('apis=', None, 'List of apis to generate(gl, egl, wgl, glx)'
                                    'separated by \',\''),
                    ('maxver=', None, 'Dictionary of api version to generate for each api as '
                                      'api=major.minor (Defaults to latest if omitted)'),
                    ('loader=', None, 'Library to use as loader. Example: SDL (not implemented)'),
                    ('extensions=', None, 'List of extensions to include,'
                                          'separated by \',\'. If empty, all extensions will be'
                                          'added to definition'),
                    ('profile=', None, 'OpenGL profile {core,compatibility} (defaults to compatibility)'),
                    ('jobs=', None, 'Number of parallel jobs to run. (Default = number of cpu\'s)'),
                    ('force-spec-dl', None, 'Force the re-download of the api specs. Usefull to et the most'
                                            'up-to-date definitions')
                    ]

    def __init__(self, dist):
        Command.__init__(self, dist)
        self.versions = {}

    def initialize_options(self):
        self.apis = None
        self.maxver = None
        self.loader = None
        self.extensions = None
        self.profile = None
        self.jobs = None
        self.force_spec_dl = None

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

        if self.jobs is None:
            self.jobs = cpu_count()
        else:
            self.jobs = int(self.jobs)

    def run(self):
        from Cython.Build import cythonize
        from _ExtMaker.GlobalMaker import Maker

        def regenApi(api, version):
            stuff = Maker(glazeAbsPath, specsAbsPath, gladAbsPath, api, {api: version},
                          self.announce, self.extensions, self.profile, self.force_spec_dl)
            stuff.create()

        for api in self.apis:
            regenApi(api, self.versions.get(api))

        cythonizables = []
        for file in os.listdir(glazeAbsPath):
            file = os.path.join(glazeAbsPath, file)
            if os.path.splitext(file)[1] == '.pyx':
                cythonizables.append(file)
            if not os.path.isfile(file) and os.path.basename(file) != 'glad':
                for file2 in os.listdir(file):
                    file2 = os.path.join(file, file2)
                    if os.path.isfile(file2):
                        if os.path.splitext(file2)[1] == '.pyx':
                            cythonizables.append(file2)

        cythonize(cythonizables,
                  language='c++',
                  # compile_time_env={'LIBRARY': b'default'},
                  nthreads=self.jobs,
                  )

        self.announce('Done. Now you can build_ext / install / develop', log.INFO)


def getExtensions():
    extensions = [Extension('glaze.utils',  # name
                            [os.path.join(glazeAbsPath, 'utils.cpp')],  # sources list
                            libraries=libraries, include_dirs=included_dirs,
                            # runtime_library_dirs=rldirs,
                            extra_compile_args=extraArgs, language="c++")]
    for api in apiList:
        extPath = os.path.join(glazeAbsPath, api.upper())
        if not os.path.exists(extPath):
            continue
        gladFilePath = os.path.join(gladAbsPath, ('glad' + ('' if api == 'GL' else '_' + api)) + '.c')
        for file in os.listdir(extPath):
            sources = [gladFilePath]
            file = os.path.join(extPath, file)
            if os.path.isfile(file):
                if os.path.splitext(file)[1] == '.cpp':
                    sources.append(file)
                    ext = Extension('glaze.' + api + '.' + os.path.splitext(os.path.basename(file))[0],  # name
                                    sources,  # sources list
                                    libraries=libraries,
                                    include_dirs=included_dirs,
                                    # runtime_library_dirs=rldirs,
                                    extra_compile_args=extraArgs,
                                    language="c++")

                    extensions.append(ext)

    return extensions


def getData():
    data = []
    for file in os.listdir(glazeAbsPath):
        file = os.path.join(glazeAbsPath, file)
        if os.path.isfile(file):
            if os.path.splitext(file)[1] == '.pxd':
                data.append(file)
    return data

setup(
    name="glaze",
    packages=["glaze"],
    ext_modules=getExtensions(),
    cmdclass={'regen': regen},
    # requires=['requests', 'Cython', 'glad'],
    package_data={'glaze': getData()},
)
