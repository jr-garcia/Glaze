voidp_typedef = '''
ctypedef fused voidp:
    char[::1]
    unsigned char[::1]
    int[::1]
    unsigned int[::1]
    float[::1]
    double[::1]
    short[::1]
    unsigned short[::1]
    '''

p2p_converter = '''
cdef {type}** makePointer2Pointer(arr):
    cdef {type}** vec = <{type}**>malloc(len(arr) * sizeof({type}*))
    cdef {type} i
    cdef {type}[:] add
    if not hasattr(arr, '__getitem__'):
        raise TypeError('argument is not indexable')
    for i in range(len(arr)):
        add = arr[i]
        vec[i] = &(add)[0]
    return vec
'''


def pxdFromDef(defstr):
    return defstr[:defstr.find(':')].strip('\n')


sizeof_str = '''
def sizeof(sizeable what):
    cdef str wtype = str(type(what))
    if sizeable in voidp:
        return sizeofArray(what)
    else:
        return sizeof(what)

def sizeofArray(voidp what):
    return what.nbytes
'''

getVoidP_str = '''
cdef void* getVoidP(voidpable obj) nogil:
    cdef void* vp
    if voidpable in voidp:
        vp = &obj[0]
    else:
        vp = <void*>obj
    return vp
'''

getVoidP_str_def = pxdFromDef(getVoidP_str)

sizeable_typedef = '''
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
'''

voidpable_typedef = '''
ctypedef fused voidpable:
    int
    unsigned int
    char
    unsigned char
    short
    unsigned short
    voidp
'''