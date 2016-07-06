voidp_typedef = '''
ctypedef fused voidp:
    char[::1]
    unsigned char[::1]
    int[::1]
    unsigned int[::1]
    float[::1]
    double[::1]'''