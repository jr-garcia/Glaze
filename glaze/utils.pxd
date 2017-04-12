
ctypedef fused voidp:
    char[::1]
    unsigned char[::1]
    int[::1]
    unsigned int[::1]
    float[::1]
    double[::1]
    short[::1]
    unsigned short[::1]
    

ctypedef fused voidpable:
    int
    unsigned int
    char
    unsigned char
    short
    unsigned short
    voidp


ctypedef fused sizeable:
    int
    unsigned int
    char
    unsigned char
    short
    unsigned short
    float
    double
    long
    unsigned long
    voidp

cdef void* getVoidP(voidpable obj) nogil
