GLAD_RELATED_PYX = """
class gladGLversionStruct:
    def __init__(self, major, minor):
        self.major = major
        self.minor = minor

# GLVersion = gladGLversionStruct()

def loadGL():
    return <bint>({prefix}.gladLoadGL())"""

GLAD_RELATED_PXD = """
    cdef struct gladGLversionStruct:
        int major
        int minor

    ctypedef void* (* GLADloadproc)(const char *name)
    cdef gladGLversionStruct GLVersion
    cdef int gladLoadGL()
    cdef int gladLoadGLLoader(GLADloadproc)
    """