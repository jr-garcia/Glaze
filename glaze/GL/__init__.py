from .GL_VERSION_1_0 import *
from .GL_VERSION_1_1 import *
from .GL_VERSION_1_2 import *
from .GL_VERSION_1_3 import *
from .GL_VERSION_1_4 import *
from .GL_VERSION_1_5 import *
from .GL_VERSION_2_0 import *
from .GL_VERSION_2_1 import *
from .GL_VERSION_3_0 import *
from .GL_VERSION_3_1 import *
from .GL_VERSION_3_2 import *
from .GL_VERSION_3_3 import *
from .GL_VERSION_4_0 import *
from .GL_VERSION_4_1 import *
from .GL_VERSION_4_2 import *
from .GL_VERSION_4_3 import *
from .GL_VERSION_4_4 import *
from .GL_VERSION_4_5 import *
from .ext_3DFX import *
from .ext_AMD import *
from .ext_APPLE import *
from .ext_ARB import *
from .ext_ATI import *
from .ext_EXT import *
from .ext_GREMEDY import *
from .ext_HP import *
from .ext_IBM import *
from .ext_INGR import *
from .ext_INTEL import *
from .ext_KHR import *
from .ext_MESAX import *
from .ext_MESA import *
from .ext_NVX import *
from .ext_NV import *
from .ext_OES import *
from .ext_OML import *
from .ext_OVR import *
from .ext_PGI import *
from .ext_REND import *
from .ext_S3 import *
from .ext_SGIS import *
from .ext_SGIX import *
from .ext_SGI import *
from .ext_SUNX import *
from .ext_SUN import *
from .ext_WIN import *


def loadGL():
    if not GL_VERSION_1_0_loadGL():
        raise RuntimeError('GL_VERSION_1_0 could not be loaded')
    if not GL_VERSION_1_1_loadGL():
        raise RuntimeError('GL_VERSION_1_1 could not be loaded')
    if not GL_VERSION_1_2_loadGL():
        raise RuntimeError('GL_VERSION_1_2 could not be loaded')
    if not GL_VERSION_1_3_loadGL():
        raise RuntimeError('GL_VERSION_1_3 could not be loaded')
    if not GL_VERSION_1_4_loadGL():
        raise RuntimeError('GL_VERSION_1_4 could not be loaded')
    if not GL_VERSION_1_5_loadGL():
        raise RuntimeError('GL_VERSION_1_5 could not be loaded')
    if not GL_VERSION_2_0_loadGL():
        raise RuntimeError('GL_VERSION_2_0 could not be loaded')
    if not GL_VERSION_2_1_loadGL():
        raise RuntimeError('GL_VERSION_2_1 could not be loaded')
    if not GL_VERSION_3_0_loadGL():
        raise RuntimeError('GL_VERSION_3_0 could not be loaded')
    if not GL_VERSION_3_1_loadGL():
        raise RuntimeError('GL_VERSION_3_1 could not be loaded')
    if not GL_VERSION_3_2_loadGL():
        raise RuntimeError('GL_VERSION_3_2 could not be loaded')
    if not GL_VERSION_3_3_loadGL():
        raise RuntimeError('GL_VERSION_3_3 could not be loaded')
    if not GL_VERSION_4_0_loadGL():
        raise RuntimeError('GL_VERSION_4_0 could not be loaded')
    if not GL_VERSION_4_1_loadGL():
        raise RuntimeError('GL_VERSION_4_1 could not be loaded')
    if not GL_VERSION_4_2_loadGL():
        raise RuntimeError('GL_VERSION_4_2 could not be loaded')
    if not GL_VERSION_4_3_loadGL():
        raise RuntimeError('GL_VERSION_4_3 could not be loaded')
    if not GL_VERSION_4_4_loadGL():
        raise RuntimeError('GL_VERSION_4_4 could not be loaded')
    if not GL_VERSION_4_5_loadGL():
        raise RuntimeError('GL_VERSION_4_5 could not be loaded')
    if not ext_3DFX_loadGL():
        raise RuntimeError('ext_3DFX could not be loaded')
    if not ext_AMD_loadGL():
        raise RuntimeError('ext_AMD could not be loaded')
    if not ext_APPLE_loadGL():
        raise RuntimeError('ext_APPLE could not be loaded')
    if not ext_ARB_loadGL():
        raise RuntimeError('ext_ARB could not be loaded')
    if not ext_ATI_loadGL():
        raise RuntimeError('ext_ATI could not be loaded')
    if not ext_EXT_loadGL():
        raise RuntimeError('ext_EXT could not be loaded')
    if not ext_GREMEDY_loadGL():
        raise RuntimeError('ext_GREMEDY could not be loaded')
    if not ext_HP_loadGL():
        raise RuntimeError('ext_HP could not be loaded')
    if not ext_IBM_loadGL():
        raise RuntimeError('ext_IBM could not be loaded')
    if not ext_INGR_loadGL():
        raise RuntimeError('ext_INGR could not be loaded')
    if not ext_INTEL_loadGL():
        raise RuntimeError('ext_INTEL could not be loaded')
    if not ext_KHR_loadGL():
        raise RuntimeError('ext_KHR could not be loaded')
    if not ext_MESAX_loadGL():
        raise RuntimeError('ext_MESAX could not be loaded')
    if not ext_MESA_loadGL():
        raise RuntimeError('ext_MESA could not be loaded')
    if not ext_NVX_loadGL():
        raise RuntimeError('ext_NVX could not be loaded')
    if not ext_NV_loadGL():
        raise RuntimeError('ext_NV could not be loaded')
    if not ext_OES_loadGL():
        raise RuntimeError('ext_OES could not be loaded')
    if not ext_OML_loadGL():
        raise RuntimeError('ext_OML could not be loaded')
    if not ext_OVR_loadGL():
        raise RuntimeError('ext_OVR could not be loaded')
    if not ext_PGI_loadGL():
        raise RuntimeError('ext_PGI could not be loaded')
    if not ext_REND_loadGL():
        raise RuntimeError('ext_REND could not be loaded')
    if not ext_S3_loadGL():
        raise RuntimeError('ext_S3 could not be loaded')
    if not ext_SGIS_loadGL():
        raise RuntimeError('ext_SGIS could not be loaded')
    if not ext_SGIX_loadGL():
        raise RuntimeError('ext_SGIX could not be loaded')
    if not ext_SGI_loadGL():
        raise RuntimeError('ext_SGI could not be loaded')
    if not ext_SUNX_loadGL():
        raise RuntimeError('ext_SUNX could not be loaded')
    if not ext_SUN_loadGL():
        raise RuntimeError('ext_SUN could not be loaded')
    if not ext_WIN_loadGL():
        raise RuntimeError('ext_WIN could not be loaded')
    return True
