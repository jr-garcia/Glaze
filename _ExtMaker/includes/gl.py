voidp_typedef = '''
ctypedef fused voidp:
    char[::1]
    unsigned char[::1]
    int[::1]
    unsigned int[::1]
    float[::1]
    double[::1]'''

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