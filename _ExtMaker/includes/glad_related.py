GLADstrings = {'GL': """
def {version}_loadGL():
    cdef bint res
    with nogil:
        res = <bint>({prefix}.gladLoad{api}())
    return res
    """}

GLAD_RELATED_PXD = """
    cdef struct gladGLversionStruct:
        int major
        int minor

    ctypedef void* (* GLADloadproc)(const char *name)
    cdef gladGLversionStruct GLVersion
    cdef int gladLoadGL()
    cdef int gladLoadGLLoader(GLADloadproc)
    """