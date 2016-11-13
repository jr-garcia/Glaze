from libc.stdint cimport *
cdef extern from 'glad.h' nogil:
    # GLAD RELATED >>

    cdef struct gladGLversionStruct:
        int major
        int minor

    ctypedef void* (* GLADloadproc)(const char *name)
    cdef gladGLversionStruct GLVersion
    cdef int gladLoadGL()
    cdef int gladLoadGLLoader(GLADloadproc)
    
    # TYPES >>

    ctypedef bint bool
    ctypedef bint BOOL
    ctypedef unsigned int GLenum
    ctypedef unsigned char GLboolean
    ctypedef unsigned int GLbitfield
    ctypedef void GLvoid
    ctypedef signed char GLbyte
    ctypedef short GLshort
    ctypedef int GLint
    ctypedef int GLclampx
    ctypedef unsigned char GLubyte
    ctypedef unsigned short GLushort
    ctypedef unsigned int GLuint
    ctypedef int GLsizei
    ctypedef float GLfloat
    ctypedef float GLclampf
    ctypedef double GLdouble
    ctypedef double GLclampd
    ctypedef void *GLeglImageOES
    ctypedef char GLchar
    ctypedef char GLcharARB
    ctypedef unsigned short GLhalfARB
    ctypedef unsigned short GLhalf
    ctypedef GLint GLfixed
    ctypedef ptrdiff_t GLintptr
    ctypedef ptrdiff_t GLsizeiptr
    ctypedef int64_t GLint64
    ctypedef uint64_t GLuint64
    ctypedef ptrdiff_t GLintptrARB
    ctypedef ptrdiff_t GLsizeiptrARB
    ctypedef int64_t GLint64EXT
    ctypedef uint64_t GLuint64EXT
    ctypedef unsigned short GLhalfNV
    ctypedef GLintptr GLvdpauSurfaceNV

    # FUNCTIONS >>

    cdef void glAccum(unsigned int op, float value)
    cdef void glAccumxOES(unsigned int op, GLint value)
    cdef void glActiveProgramEXT(unsigned int program)
    cdef void glActiveShaderProgram(unsigned int pipeline, unsigned int program)
    cdef void glActiveShaderProgramEXT(unsigned int pipeline, unsigned int program)
    cdef void glActiveStencilFaceEXT(unsigned int face)
    cdef void glActiveTexture(unsigned int texture)
    cdef void glActiveTextureARB(unsigned int texture)
    cdef void glActiveVaryingNV(unsigned int program, const char* name)
    cdef void glAlphaFragmentOp1ATI(unsigned int op, unsigned int dst, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod)
    cdef void glAlphaFragmentOp2ATI(unsigned int op, unsigned int dst, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod, unsigned int arg2, unsigned int arg2Rep, unsigned int arg2Mod)
    cdef void glAlphaFragmentOp3ATI(unsigned int op, unsigned int dst, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod, unsigned int arg2, unsigned int arg2Rep, unsigned int arg2Mod, unsigned int arg3, unsigned int arg3Rep, unsigned int arg3Mod)
    cdef void glAlphaFunc(unsigned int func, float ref)
    cdef void glAlphaFuncxOES(unsigned int func, GLint ref)
    cdef void glApplyFramebufferAttachmentCMAAINTEL()
    cdef void glApplyTextureEXT(unsigned int mode)
    cdef GLboolean glAreProgramsResidentNV(int n, const unsigned int* programs, unsigned char* residences)
    cdef GLboolean glAreTexturesResident(int n, const unsigned int* textures, unsigned char* residences)
    cdef GLboolean glAreTexturesResidentEXT(int n, const unsigned int* textures, unsigned char* residences)
    cdef void glArrayElement(int i)
    cdef void glArrayElementEXT(int i)
    cdef void glArrayObjectATI(unsigned int array, int size, unsigned int type, int stride, unsigned int buffer, unsigned int offset)
    cdef void glAsyncMarkerSGIX(unsigned int marker)
    cdef void glAttachShader(unsigned int program, unsigned int shader)
    cdef void glBegin(unsigned int mode)
    cdef void glBeginConditionalRender(unsigned int id, unsigned int mode)
    cdef void glBeginConditionalRenderNV(unsigned int id, unsigned int mode)
    cdef void glBeginConditionalRenderNVX(unsigned int id)
    cdef void glBeginFragmentShaderATI()
    cdef void glBeginOcclusionQueryNV(unsigned int id)
    cdef void glBeginPerfMonitorAMD(unsigned int monitor)
    cdef void glBeginPerfQueryINTEL(unsigned int queryHandle)
    cdef void glBeginQuery(unsigned int target, unsigned int id)
    cdef void glBeginQueryARB(unsigned int target, unsigned int id)
    cdef void glBeginQueryIndexed(unsigned int target, unsigned int index, unsigned int id)
    cdef void glBeginTransformFeedback(unsigned int primitiveMode)
    cdef void glBeginTransformFeedbackEXT(unsigned int primitiveMode)
    cdef void glBeginTransformFeedbackNV(unsigned int primitiveMode)
    cdef void glBeginVertexShaderEXT()
    cdef void glBeginVideoCaptureNV(unsigned int video_capture_slot)
    cdef void glBindAttribLocation(unsigned int program, unsigned int index, const char* name)
    cdef void glBindBuffer(unsigned int target, unsigned int buffer)
    cdef void glBindBufferARB(unsigned int target, unsigned int buffer)
    cdef void glBindBufferBase(unsigned int target, unsigned int index, unsigned int buffer)
    cdef void glBindBufferBaseEXT(unsigned int target, unsigned int index, unsigned int buffer)
    cdef void glBindBufferBaseNV(unsigned int target, unsigned int index, unsigned int buffer)
    cdef void glBindBufferOffsetEXT(unsigned int target, unsigned int index, unsigned int buffer, ptrdiff_t offset)
    cdef void glBindBufferOffsetNV(unsigned int target, unsigned int index, unsigned int buffer, ptrdiff_t offset)
    cdef void glBindBufferRange(unsigned int target, unsigned int index, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glBindBufferRangeEXT(unsigned int target, unsigned int index, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glBindBufferRangeNV(unsigned int target, unsigned int index, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glBindBuffersBase(unsigned int target, unsigned int first, int count, const unsigned int* buffers)
    cdef void glBindBuffersRange(unsigned int target, unsigned int first, int count, const unsigned int* buffers, const ptrdiff_t* offsets, const ptrdiff_t* sizes)
    cdef void glBindFragDataLocation(unsigned int program, unsigned int color, const char* name)
    cdef void glBindFragDataLocationEXT(unsigned int program, unsigned int color, const char* name)
    cdef void glBindFragDataLocationIndexed(unsigned int program, unsigned int colorNumber, unsigned int index, const char* name)
    cdef void glBindFragmentShaderATI(unsigned int id)
    cdef void glBindFramebuffer(unsigned int target, unsigned int framebuffer)
    cdef void glBindFramebufferEXT(unsigned int target, unsigned int framebuffer)
    cdef void glBindImageTexture(unsigned int unit, unsigned int texture, int level, unsigned char layered, int layer, unsigned int access, unsigned int format)
    cdef void glBindImageTextureEXT(unsigned int index, unsigned int texture, int level, unsigned char layered, int layer, unsigned int access, int format)
    cdef void glBindImageTextures(unsigned int first, int count, const unsigned int* textures)
    cdef GLuint glBindLightParameterEXT(unsigned int light, unsigned int value)
    cdef GLuint glBindMaterialParameterEXT(unsigned int face, unsigned int value)
    cdef void glBindMultiTextureEXT(unsigned int texunit, unsigned int target, unsigned int texture)
    cdef GLuint glBindParameterEXT(unsigned int value)
    cdef void glBindProgramARB(unsigned int target, unsigned int program)
    cdef void glBindProgramNV(unsigned int target, unsigned int id)
    cdef void glBindProgramPipeline(unsigned int pipeline)
    cdef void glBindProgramPipelineEXT(unsigned int pipeline)
    cdef void glBindRenderbuffer(unsigned int target, unsigned int renderbuffer)
    cdef void glBindRenderbufferEXT(unsigned int target, unsigned int renderbuffer)
    cdef void glBindSampler(unsigned int unit, unsigned int sampler)
    cdef void glBindSamplers(unsigned int first, int count, const unsigned int* samplers)
    cdef GLuint glBindTexGenParameterEXT(unsigned int unit, unsigned int coord, unsigned int value)
    cdef void glBindTexture(unsigned int target, unsigned int texture)
    cdef void glBindTextureEXT(unsigned int target, unsigned int texture)
    cdef void glBindTextureUnit(unsigned int unit, unsigned int texture)
    cdef GLuint glBindTextureUnitParameterEXT(unsigned int unit, unsigned int value)
    cdef void glBindTextures(unsigned int first, int count, const unsigned int* textures)
    cdef void glBindTransformFeedback(unsigned int target, unsigned int id)
    cdef void glBindTransformFeedbackNV(unsigned int target, unsigned int id)
    cdef void glBindVertexArray(unsigned int array)
    cdef void glBindVertexArrayAPPLE(unsigned int array)
    cdef void glBindVertexBuffer(unsigned int bindingindex, unsigned int buffer, ptrdiff_t offset, int stride)
    cdef void glBindVertexBuffers(unsigned int first, int count, const unsigned int* buffers, const ptrdiff_t* offsets, const int* strides)
    cdef void glBindVertexShaderEXT(unsigned int id)
    cdef void glBindVideoCaptureStreamBufferNV(unsigned int video_capture_slot, unsigned int stream, unsigned int frame_region, ptrdiff_t offset)
    cdef void glBindVideoCaptureStreamTextureNV(unsigned int video_capture_slot, unsigned int stream, unsigned int frame_region, unsigned int target, unsigned int texture)
    cdef void glBinormal3bEXT(signed char bx, signed char by, signed char bz)
    cdef void glBinormal3bvEXT(const signed char* v)
    cdef void glBinormal3dEXT(double bx, double by, double bz)
    cdef void glBinormal3dvEXT(const double* v)
    cdef void glBinormal3fEXT(float bx, float by, float bz)
    cdef void glBinormal3fvEXT(const float* v)
    cdef void glBinormal3iEXT(int bx, int by, int bz)
    cdef void glBinormal3ivEXT(const int* v)
    cdef void glBinormal3sEXT(short bx, short by, short bz)
    cdef void glBinormal3svEXT(const short* v)
    cdef void glBinormalPointerEXT(unsigned int type, int stride, const void* pointer)
    cdef void glBitmap(int width, int height, float xorig, float yorig, float xmove, float ymove, const unsigned char* bitmap)
    cdef void glBitmapxOES(int width, int height, GLint xorig, GLint yorig, GLint xmove, GLint ymove, const unsigned char* bitmap)
    cdef void glBlendBarrierKHR()
    cdef void glBlendBarrierNV()
    cdef void glBlendColor(float red, float green, float blue, float alpha)
    cdef void glBlendColorEXT(float red, float green, float blue, float alpha)
    cdef void glBlendColorxOES(GLint red, GLint green, GLint blue, GLint alpha)
    cdef void glBlendEquation(unsigned int mode)
    cdef void glBlendEquationEXT(unsigned int mode)
    cdef void glBlendEquationIndexedAMD(unsigned int buf, unsigned int mode)
    cdef void glBlendEquationSeparate(unsigned int modeRGB, unsigned int modeAlpha)
    cdef void glBlendEquationSeparateEXT(unsigned int modeRGB, unsigned int modeAlpha)
    cdef void glBlendEquationSeparateIndexedAMD(unsigned int buf, unsigned int modeRGB, unsigned int modeAlpha)
    cdef void glBlendEquationSeparatei(unsigned int buf, unsigned int modeRGB, unsigned int modeAlpha)
    cdef void glBlendEquationSeparateiARB(unsigned int buf, unsigned int modeRGB, unsigned int modeAlpha)
    cdef void glBlendEquationi(unsigned int buf, unsigned int mode)
    cdef void glBlendEquationiARB(unsigned int buf, unsigned int mode)
    cdef void glBlendFunc(unsigned int sfactor, unsigned int dfactor)
    cdef void glBlendFuncIndexedAMD(unsigned int buf, unsigned int src, unsigned int dst)
    cdef void glBlendFuncSeparate(unsigned int sfactorRGB, unsigned int dfactorRGB, unsigned int sfactorAlpha, unsigned int dfactorAlpha)
    cdef void glBlendFuncSeparateEXT(unsigned int sfactorRGB, unsigned int dfactorRGB, unsigned int sfactorAlpha, unsigned int dfactorAlpha)
    cdef void glBlendFuncSeparateINGR(unsigned int sfactorRGB, unsigned int dfactorRGB, unsigned int sfactorAlpha, unsigned int dfactorAlpha)
    cdef void glBlendFuncSeparateIndexedAMD(unsigned int buf, unsigned int srcRGB, unsigned int dstRGB, unsigned int srcAlpha, unsigned int dstAlpha)
    cdef void glBlendFuncSeparatei(unsigned int buf, unsigned int srcRGB, unsigned int dstRGB, unsigned int srcAlpha, unsigned int dstAlpha)
    cdef void glBlendFuncSeparateiARB(unsigned int buf, unsigned int srcRGB, unsigned int dstRGB, unsigned int srcAlpha, unsigned int dstAlpha)
    cdef void glBlendFunci(unsigned int buf, unsigned int src, unsigned int dst)
    cdef void glBlendFunciARB(unsigned int buf, unsigned int src, unsigned int dst)
    cdef void glBlendParameteriNV(unsigned int pname, int value)
    cdef void glBlitFramebuffer(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, unsigned int mask, unsigned int filter)
    cdef void glBlitFramebufferEXT(int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, unsigned int mask, unsigned int filter)
    cdef void glBlitNamedFramebuffer(unsigned int readFramebuffer, unsigned int drawFramebuffer, int srcX0, int srcY0, int srcX1, int srcY1, int dstX0, int dstY0, int dstX1, int dstY1, unsigned int mask, unsigned int filter)
    cdef void glBufferAddressRangeNV(unsigned int pname, unsigned int index, uint64_t address, ptrdiff_t length)
    cdef void glBufferData(unsigned int target, ptrdiff_t size, const void* data, unsigned int usage)
    cdef void glBufferDataARB(unsigned int target, ptrdiff_t size, const void* data, unsigned int usage)
    cdef void glBufferPageCommitmentARB(unsigned int target, ptrdiff_t offset, ptrdiff_t size, unsigned char commit)
    cdef void glBufferParameteriAPPLE(unsigned int target, unsigned int pname, int param)
    cdef void glBufferStorage(unsigned int target, ptrdiff_t size, const void* data, unsigned int flags)
    cdef void glBufferSubData(unsigned int target, ptrdiff_t offset, ptrdiff_t size, const void* data)
    cdef void glBufferSubDataARB(unsigned int target, ptrdiff_t offset, ptrdiff_t size, const void* data)
    cdef void glCallCommandListNV(unsigned int list)
    cdef void glCallList(unsigned int list)
    cdef void glCallLists(int n, unsigned int type, const void* lists)
    cdef GLenum glCheckFramebufferStatus(unsigned int target)
    cdef GLenum glCheckFramebufferStatusEXT(unsigned int target)
    cdef GLenum glCheckNamedFramebufferStatus(unsigned int framebuffer, unsigned int target)
    cdef GLenum glCheckNamedFramebufferStatusEXT(unsigned int framebuffer, unsigned int target)
    cdef void glClampColor(unsigned int target, unsigned int clamp)
    cdef void glClampColorARB(unsigned int target, unsigned int clamp)
    cdef void glClear(unsigned int mask)
    cdef void glClearAccum(float red, float green, float blue, float alpha)
    cdef void glClearAccumxOES(GLint red, GLint green, GLint blue, GLint alpha)
    cdef void glClearBufferData(unsigned int target, unsigned int internalformat, unsigned int format, unsigned int type, const void* data)
    cdef void glClearBufferSubData(unsigned int target, unsigned int internalformat, ptrdiff_t offset, ptrdiff_t size, unsigned int format, unsigned int type, const void* data)
    cdef void glClearBufferfi(unsigned int buffer, int drawbuffer, float depth, int stencil)
    cdef void glClearBufferfv(unsigned int buffer, int drawbuffer, const float* value)
    cdef void glClearBufferiv(unsigned int buffer, int drawbuffer, const int* value)
    cdef void glClearBufferuiv(unsigned int buffer, int drawbuffer, const unsigned int* value)
    cdef void glClearColor(float red, float green, float blue, float alpha)
    cdef void glClearColorIiEXT(int red, int green, int blue, int alpha)
    cdef void glClearColorIuiEXT(unsigned int red, unsigned int green, unsigned int blue, unsigned int alpha)
    cdef void glClearColorxOES(GLint red, GLint green, GLint blue, GLint alpha)
    cdef void glClearDepth(double depth)
    cdef void glClearDepthdNV(double depth)
    cdef void glClearDepthf(float d)
    cdef void glClearDepthfOES(float depth)
    cdef void glClearDepthxOES(GLint depth)
    cdef void glClearIndex(float c)
    cdef void glClearNamedBufferData(unsigned int buffer, unsigned int internalformat, unsigned int format, unsigned int type, const void* data)
    cdef void glClearNamedBufferDataEXT(unsigned int buffer, unsigned int internalformat, unsigned int format, unsigned int type, const void* data)
    cdef void glClearNamedBufferSubData(unsigned int buffer, unsigned int internalformat, ptrdiff_t offset, ptrdiff_t size, unsigned int format, unsigned int type, const void* data)
    cdef void glClearNamedBufferSubDataEXT(unsigned int buffer, unsigned int internalformat, ptrdiff_t offset, ptrdiff_t size, unsigned int format, unsigned int type, const void* data)
    cdef void glClearNamedFramebufferfi(unsigned int framebuffer, unsigned int buffer, int drawbuffer, float depth, int stencil)
    cdef void glClearNamedFramebufferfv(unsigned int framebuffer, unsigned int buffer, int drawbuffer, const float* value)
    cdef void glClearNamedFramebufferiv(unsigned int framebuffer, unsigned int buffer, int drawbuffer, const int* value)
    cdef void glClearNamedFramebufferuiv(unsigned int framebuffer, unsigned int buffer, int drawbuffer, const unsigned int* value)
    cdef void glClearStencil(int s)
    cdef void glClearTexImage(unsigned int texture, int level, unsigned int format, unsigned int type, const void* data)
    cdef void glClearTexSubImage(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* data)
    cdef void glClientActiveTexture(unsigned int texture)
    cdef void glClientActiveTextureARB(unsigned int texture)
    cdef void glClientActiveVertexStreamATI(unsigned int stream)
    cdef void glClientAttribDefaultEXT(unsigned int mask)
    cdef void glClipControl(unsigned int origin, unsigned int depth)
    cdef void glClipPlane(unsigned int plane, const double* equation)
    cdef void glClipPlanefOES(unsigned int plane, const float* equation)
    cdef void glClipPlanexOES(unsigned int plane, const GLint* equation)
    cdef void glColor3b(signed char red, signed char green, signed char blue)
    cdef void glColor3bv(const signed char* v)
    cdef void glColor3d(double red, double green, double blue)
    cdef void glColor3dv(const double* v)
    cdef void glColor3f(float red, float green, float blue)
    cdef void glColor3fVertex3fSUN(float r, float g, float b, float x, float y, float z)
    cdef void glColor3fVertex3fvSUN(const float* c, const float* v)
    cdef void glColor3fv(const float* v)
    cdef void glColor3hNV(unsigned short red, unsigned short green, unsigned short blue)
    cdef void glColor3hvNV(const unsigned short* v)
    cdef void glColor3i(int red, int green, int blue)
    cdef void glColor3iv(const int* v)
    cdef void glColor3s(short red, short green, short blue)
    cdef void glColor3sv(const short* v)
    cdef void glColor3ub(unsigned char red, unsigned char green, unsigned char blue)
    cdef void glColor3ubv(const unsigned char* v)
    cdef void glColor3ui(unsigned int red, unsigned int green, unsigned int blue)
    cdef void glColor3uiv(const unsigned int* v)
    cdef void glColor3us(unsigned short red, unsigned short green, unsigned short blue)
    cdef void glColor3usv(const unsigned short* v)
    cdef void glColor3xOES(GLint red, GLint green, GLint blue)
    cdef void glColor3xvOES(const GLint* components)
    cdef void glColor4b(signed char red, signed char green, signed char blue, signed char alpha)
    cdef void glColor4bv(const signed char* v)
    cdef void glColor4d(double red, double green, double blue, double alpha)
    cdef void glColor4dv(const double* v)
    cdef void glColor4f(float red, float green, float blue, float alpha)
    cdef void glColor4fNormal3fVertex3fSUN(float r, float g, float b, float a, float nx, float ny, float nz, float x, float y, float z)
    cdef void glColor4fNormal3fVertex3fvSUN(const float* c, const float* n, const float* v)
    cdef void glColor4fv(const float* v)
    cdef void glColor4hNV(unsigned short red, unsigned short green, unsigned short blue, unsigned short alpha)
    cdef void glColor4hvNV(const unsigned short* v)
    cdef void glColor4i(int red, int green, int blue, int alpha)
    cdef void glColor4iv(const int* v)
    cdef void glColor4s(short red, short green, short blue, short alpha)
    cdef void glColor4sv(const short* v)
    cdef void glColor4ub(unsigned char red, unsigned char green, unsigned char blue, unsigned char alpha)
    cdef void glColor4ubVertex2fSUN(unsigned char r, unsigned char g, unsigned char b, unsigned char a, float x, float y)
    cdef void glColor4ubVertex2fvSUN(const unsigned char* c, const float* v)
    cdef void glColor4ubVertex3fSUN(unsigned char r, unsigned char g, unsigned char b, unsigned char a, float x, float y, float z)
    cdef void glColor4ubVertex3fvSUN(const unsigned char* c, const float* v)
    cdef void glColor4ubv(const unsigned char* v)
    cdef void glColor4ui(unsigned int red, unsigned int green, unsigned int blue, unsigned int alpha)
    cdef void glColor4uiv(const unsigned int* v)
    cdef void glColor4us(unsigned short red, unsigned short green, unsigned short blue, unsigned short alpha)
    cdef void glColor4usv(const unsigned short* v)
    cdef void glColor4xOES(GLint red, GLint green, GLint blue, GLint alpha)
    cdef void glColor4xvOES(const GLint* components)
    cdef void glColorFormatNV(int size, unsigned int type, int stride)
    cdef void glColorFragmentOp1ATI(unsigned int op, unsigned int dst, unsigned int dstMask, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod)
    cdef void glColorFragmentOp2ATI(unsigned int op, unsigned int dst, unsigned int dstMask, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod, unsigned int arg2, unsigned int arg2Rep, unsigned int arg2Mod)
    cdef void glColorFragmentOp3ATI(unsigned int op, unsigned int dst, unsigned int dstMask, unsigned int dstMod, unsigned int arg1, unsigned int arg1Rep, unsigned int arg1Mod, unsigned int arg2, unsigned int arg2Rep, unsigned int arg2Mod, unsigned int arg3, unsigned int arg3Rep, unsigned int arg3Mod)
    cdef void glColorMask(unsigned char red, unsigned char green, unsigned char blue, unsigned char alpha)
    cdef void glColorMaskIndexedEXT(unsigned int index, unsigned char r, unsigned char g, unsigned char b, unsigned char a)
    cdef void glColorMaski(unsigned int index, unsigned char r, unsigned char g, unsigned char b, unsigned char a)
    cdef void glColorMaterial(unsigned int face, unsigned int mode)
    cdef void glColorP3ui(unsigned int type, unsigned int color)
    cdef void glColorP3uiv(unsigned int type, const unsigned int* color)
    cdef void glColorP4ui(unsigned int type, unsigned int color)
    cdef void glColorP4uiv(unsigned int type, const unsigned int* color)
    cdef void glColorPointer(int size, unsigned int type, int stride, const void* pointer)
    cdef void glColorPointerEXT(int size, unsigned int type, int stride, int count, const void* pointer)
    cdef void glColorPointerListIBM(int size, unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glColorPointervINTEL(int size, unsigned int type, const void** pointer)
    cdef void glColorSubTable(unsigned int target, int start, int count, unsigned int format, unsigned int type, const void* data)
    cdef void glColorSubTableEXT(unsigned int target, int start, int count, unsigned int format, unsigned int type, const void* data)
    cdef void glColorTable(unsigned int target, unsigned int internalformat, int width, unsigned int format, unsigned int type, const void* table)
    cdef void glColorTableEXT(unsigned int target, unsigned int internalFormat, int width, unsigned int format, unsigned int type, const void* table)
    cdef void glColorTableParameterfv(unsigned int target, unsigned int pname, const float* params)
    cdef void glColorTableParameterfvSGI(unsigned int target, unsigned int pname, const float* params)
    cdef void glColorTableParameteriv(unsigned int target, unsigned int pname, const int* params)
    cdef void glColorTableParameterivSGI(unsigned int target, unsigned int pname, const int* params)
    cdef void glColorTableSGI(unsigned int target, unsigned int internalformat, int width, unsigned int format, unsigned int type, const void* table)
    cdef void glCombinerInputNV(unsigned int stage, unsigned int portion, unsigned int variable, unsigned int input, unsigned int mapping, unsigned int componentUsage)
    cdef void glCombinerOutputNV(unsigned int stage, unsigned int portion, unsigned int abOutput, unsigned int cdOutput, unsigned int sumOutput, unsigned int scale, unsigned int bias, unsigned char abDotProduct, unsigned char cdDotProduct, unsigned char muxSum)
    cdef void glCombinerParameterfNV(unsigned int pname, float param)
    cdef void glCombinerParameterfvNV(unsigned int pname, const float* params)
    cdef void glCombinerParameteriNV(unsigned int pname, int param)
    cdef void glCombinerParameterivNV(unsigned int pname, const int* params)
    cdef void glCombinerStageParameterfvNV(unsigned int stage, unsigned int pname, const float* params)
    cdef void glCommandListSegmentsNV(unsigned int list, unsigned int segments)
    cdef void glCompileCommandListNV(unsigned int list)
    cdef void glCompileShader(unsigned int shader)
    cdef void glCompileShaderIncludeARB(unsigned int shader, int count, const char** path, const int* length)
    cdef void glCompressedMultiTexImage1DEXT(unsigned int texunit, unsigned int target, int level, unsigned int internalformat, int width, int border, int imageSize, const void* bits)
    cdef void glCompressedMultiTexImage2DEXT(unsigned int texunit, unsigned int target, int level, unsigned int internalformat, int width, int height, int border, int imageSize, const void* bits)
    cdef void glCompressedMultiTexImage3DEXT(unsigned int texunit, unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int border, int imageSize, const void* bits)
    cdef void glCompressedMultiTexSubImage1DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int width, unsigned int format, int imageSize, const void* bits)
    cdef void glCompressedMultiTexSubImage2DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, int imageSize, const void* bits)
    cdef void glCompressedMultiTexSubImage3DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, int imageSize, const void* bits)
    cdef void glCompressedTexImage1D(unsigned int target, int level, unsigned int internalformat, int width, int border, int imageSize, const void* data)
    cdef void glCompressedTexImage1DARB(unsigned int target, int level, unsigned int internalformat, int width, int border, int imageSize, const void* data)
    cdef void glCompressedTexImage2D(unsigned int target, int level, unsigned int internalformat, int width, int height, int border, int imageSize, const void* data)
    cdef void glCompressedTexImage2DARB(unsigned int target, int level, unsigned int internalformat, int width, int height, int border, int imageSize, const void* data)
    cdef void glCompressedTexImage3D(unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int border, int imageSize, const void* data)
    cdef void glCompressedTexImage3DARB(unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int border, int imageSize, const void* data)
    cdef void glCompressedTexSubImage1D(unsigned int target, int level, int xoffset, int width, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTexSubImage1DARB(unsigned int target, int level, int xoffset, int width, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTexSubImage2D(unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTexSubImage2DARB(unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTexSubImage3D(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTexSubImage3DARB(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTextureImage1DEXT(unsigned int texture, unsigned int target, int level, unsigned int internalformat, int width, int border, int imageSize, const void* bits)
    cdef void glCompressedTextureImage2DEXT(unsigned int texture, unsigned int target, int level, unsigned int internalformat, int width, int height, int border, int imageSize, const void* bits)
    cdef void glCompressedTextureImage3DEXT(unsigned int texture, unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int border, int imageSize, const void* bits)
    cdef void glCompressedTextureSubImage1D(unsigned int texture, int level, int xoffset, int width, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTextureSubImage1DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int width, unsigned int format, int imageSize, const void* bits)
    cdef void glCompressedTextureSubImage2D(unsigned int texture, int level, int xoffset, int yoffset, int width, int height, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTextureSubImage2DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, int imageSize, const void* bits)
    cdef void glCompressedTextureSubImage3D(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, int imageSize, const void* data)
    cdef void glCompressedTextureSubImage3DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, int imageSize, const void* bits)
    cdef void glConservativeRasterParameterfNV(unsigned int pname, float value)
    cdef void glConservativeRasterParameteriNV(unsigned int pname, int param)
    cdef void glConvolutionFilter1D(unsigned int target, unsigned int internalformat, int width, unsigned int format, unsigned int type, const void* image)
    cdef void glConvolutionFilter1DEXT(unsigned int target, unsigned int internalformat, int width, unsigned int format, unsigned int type, const void* image)
    cdef void glConvolutionFilter2D(unsigned int target, unsigned int internalformat, int width, int height, unsigned int format, unsigned int type, const void* image)
    cdef void glConvolutionFilter2DEXT(unsigned int target, unsigned int internalformat, int width, int height, unsigned int format, unsigned int type, const void* image)
    cdef void glConvolutionParameterf(unsigned int target, unsigned int pname, float params)
    cdef void glConvolutionParameterfEXT(unsigned int target, unsigned int pname, float params)
    cdef void glConvolutionParameterfv(unsigned int target, unsigned int pname, const float* params)
    cdef void glConvolutionParameterfvEXT(unsigned int target, unsigned int pname, const float* params)
    cdef void glConvolutionParameteri(unsigned int target, unsigned int pname, int params)
    cdef void glConvolutionParameteriEXT(unsigned int target, unsigned int pname, int params)
    cdef void glConvolutionParameteriv(unsigned int target, unsigned int pname, const int* params)
    cdef void glConvolutionParameterivEXT(unsigned int target, unsigned int pname, const int* params)
    cdef void glConvolutionParameterxOES(unsigned int target, unsigned int pname, GLint param)
    cdef void glConvolutionParameterxvOES(unsigned int target, unsigned int pname, const GLint* params)
    cdef void glCopyBufferSubData(unsigned int readTarget, unsigned int writeTarget, ptrdiff_t readOffset, ptrdiff_t writeOffset, ptrdiff_t size)
    cdef void glCopyColorSubTable(unsigned int target, int start, int x, int y, int width)
    cdef void glCopyColorSubTableEXT(unsigned int target, int start, int x, int y, int width)
    cdef void glCopyColorTable(unsigned int target, unsigned int internalformat, int x, int y, int width)
    cdef void glCopyColorTableSGI(unsigned int target, unsigned int internalformat, int x, int y, int width)
    cdef void glCopyConvolutionFilter1D(unsigned int target, unsigned int internalformat, int x, int y, int width)
    cdef void glCopyConvolutionFilter1DEXT(unsigned int target, unsigned int internalformat, int x, int y, int width)
    cdef void glCopyConvolutionFilter2D(unsigned int target, unsigned int internalformat, int x, int y, int width, int height)
    cdef void glCopyConvolutionFilter2DEXT(unsigned int target, unsigned int internalformat, int x, int y, int width, int height)
    cdef void glCopyImageSubData(unsigned int srcName, unsigned int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, unsigned int dstName, unsigned int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int srcWidth, int srcHeight, int srcDepth)
    cdef void glCopyImageSubDataNV(unsigned int srcName, unsigned int srcTarget, int srcLevel, int srcX, int srcY, int srcZ, unsigned int dstName, unsigned int dstTarget, int dstLevel, int dstX, int dstY, int dstZ, int width, int height, int depth)
    cdef void glCopyMultiTexImage1DEXT(unsigned int texunit, unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int border)
    cdef void glCopyMultiTexImage2DEXT(unsigned int texunit, unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int height, int border)
    cdef void glCopyMultiTexSubImage1DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int x, int y, int width)
    cdef void glCopyMultiTexSubImage2DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    cdef void glCopyMultiTexSubImage3DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)
    cdef void glCopyNamedBufferSubData(unsigned int readBuffer, unsigned int writeBuffer, ptrdiff_t readOffset, ptrdiff_t writeOffset, ptrdiff_t size)
    cdef void glCopyPathNV(unsigned int resultPath, unsigned int srcPath)
    cdef void glCopyPixels(int x, int y, int width, int height, unsigned int type)
    cdef void glCopyTexImage1D(unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int border)
    cdef void glCopyTexImage1DEXT(unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int border)
    cdef void glCopyTexImage2D(unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int height, int border)
    cdef void glCopyTexImage2DEXT(unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int height, int border)
    cdef void glCopyTexSubImage1D(unsigned int target, int level, int xoffset, int x, int y, int width)
    cdef void glCopyTexSubImage1DEXT(unsigned int target, int level, int xoffset, int x, int y, int width)
    cdef void glCopyTexSubImage2D(unsigned int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    cdef void glCopyTexSubImage2DEXT(unsigned int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    cdef void glCopyTexSubImage3D(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)
    cdef void glCopyTexSubImage3DEXT(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)
    cdef void glCopyTextureImage1DEXT(unsigned int texture, unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int border)
    cdef void glCopyTextureImage2DEXT(unsigned int texture, unsigned int target, int level, unsigned int internalformat, int x, int y, int width, int height, int border)
    cdef void glCopyTextureSubImage1D(unsigned int texture, int level, int xoffset, int x, int y, int width)
    cdef void glCopyTextureSubImage1DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int x, int y, int width)
    cdef void glCopyTextureSubImage2D(unsigned int texture, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    cdef void glCopyTextureSubImage2DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int x, int y, int width, int height)
    cdef void glCopyTextureSubImage3D(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)
    cdef void glCopyTextureSubImage3DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int x, int y, int width, int height)
    cdef void glCoverFillPathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, unsigned int coverMode, unsigned int transformType, const float* transformValues)
    cdef void glCoverFillPathNV(unsigned int path, unsigned int coverMode)
    cdef void glCoverStrokePathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, unsigned int coverMode, unsigned int transformType, const float* transformValues)
    cdef void glCoverStrokePathNV(unsigned int path, unsigned int coverMode)
    cdef void glCoverageModulationNV(unsigned int components)
    cdef void glCoverageModulationTableNV(int n, const float* v)
    cdef void glCreateBuffers(int n, unsigned int* buffers)
    cdef void glCreateCommandListsNV(int n, unsigned int* lists)
    cdef void glCreateFramebuffers(int n, unsigned int* framebuffers)
    cdef void glCreatePerfQueryINTEL(unsigned int queryId, unsigned int* queryHandle)
    cdef GLuint glCreateProgram()
    cdef void glCreateProgramPipelines(int n, unsigned int* pipelines)
    cdef void glCreateQueries(unsigned int target, int n, unsigned int* ids)
    cdef void glCreateRenderbuffers(int n, unsigned int* renderbuffers)
    cdef void glCreateSamplers(int n, unsigned int* samplers)
    cdef GLuint glCreateShader(unsigned int type)
    cdef GLuint glCreateShaderProgramEXT(unsigned int type, const char* string)
    cdef GLuint glCreateShaderProgramv(unsigned int type, int count, const char** strings)
    cdef GLuint glCreateShaderProgramvEXT(unsigned int type, int count, const char** strings)
    cdef void glCreateStatesNV(int n, unsigned int* states)
    cdef void glCreateTextures(unsigned int target, int n, unsigned int* textures)
    cdef void glCreateTransformFeedbacks(int n, unsigned int* ids)
    cdef void glCreateVertexArrays(int n, unsigned int* arrays)
    cdef void glCullFace(unsigned int mode)
    cdef void glCullParameterdvEXT(unsigned int pname, double* params)
    cdef void glCullParameterfvEXT(unsigned int pname, float* params)
    cdef void glCurrentPaletteMatrixARB(int index)
    cdef void glDebugMessageControl(unsigned int source, unsigned int type, unsigned int severity, int count, const unsigned int* ids, unsigned char enabled)
    cdef void glDebugMessageControlARB(unsigned int source, unsigned int type, unsigned int severity, int count, const unsigned int* ids, unsigned char enabled)
    cdef void glDebugMessageControlKHR(unsigned int source, unsigned int type, unsigned int severity, int count, const unsigned int* ids, unsigned char enabled)
    cdef void glDebugMessageEnableAMD(unsigned int category, unsigned int severity, int count, const unsigned int* ids, unsigned char enabled)
    cdef void glDebugMessageInsert(unsigned int source, unsigned int type, unsigned int id, unsigned int severity, int length, const char* buf)
    cdef void glDebugMessageInsertAMD(unsigned int category, unsigned int severity, unsigned int id, int length, const char* buf)
    cdef void glDebugMessageInsertARB(unsigned int source, unsigned int type, unsigned int id, unsigned int severity, int length, const char* buf)
    cdef void glDebugMessageInsertKHR(unsigned int source, unsigned int type, unsigned int id, unsigned int severity, int length, const char* buf)
    cdef void glDeformSGIX(unsigned int mask)
    cdef void glDeformationMap3dSGIX(unsigned int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, double w1, double w2, int wstride, int worder, const double* points)
    cdef void glDeformationMap3fSGIX(unsigned int target, float u1, float u2, int ustride, int uorder, float v1, float v2, int vstride, int vorder, float w1, float w2, int wstride, int worder, const float* points)
    cdef void glDeleteAsyncMarkersSGIX(unsigned int marker, int range)
    cdef void glDeleteBuffers(int n, const unsigned int* buffers)
    cdef void glDeleteBuffersARB(int n, const unsigned int* buffers)
    cdef void glDeleteCommandListsNV(int n, const unsigned int* lists)
    cdef void glDeleteFencesAPPLE(int n, const unsigned int* fences)
    cdef void glDeleteFencesNV(int n, const unsigned int* fences)
    cdef void glDeleteFragmentShaderATI(unsigned int id)
    cdef void glDeleteFramebuffers(int n, const unsigned int* framebuffers)
    cdef void glDeleteFramebuffersEXT(int n, const unsigned int* framebuffers)
    cdef void glDeleteLists(unsigned int list, int range)
    cdef void glDeleteNamedStringARB(int namelen, const char* name)
    cdef void glDeleteNamesAMD(unsigned int identifier, unsigned int num, const unsigned int* names)
    cdef void glDeleteOcclusionQueriesNV(int n, const unsigned int* ids)
    cdef void glDeletePathsNV(unsigned int path, int range)
    cdef void glDeletePerfMonitorsAMD(int n, unsigned int* monitors)
    cdef void glDeletePerfQueryINTEL(unsigned int queryHandle)
    cdef void glDeleteProgram(unsigned int program)
    cdef void glDeleteProgramPipelines(int n, const unsigned int* pipelines)
    cdef void glDeleteProgramPipelinesEXT(int n, const unsigned int* pipelines)
    cdef void glDeleteProgramsARB(int n, const unsigned int* programs)
    cdef void glDeleteProgramsNV(int n, const unsigned int* programs)
    cdef void glDeleteQueries(int n, const unsigned int* ids)
    cdef void glDeleteQueriesARB(int n, const unsigned int* ids)
    cdef void glDeleteRenderbuffers(int n, const unsigned int* renderbuffers)
    cdef void glDeleteRenderbuffersEXT(int n, const unsigned int* renderbuffers)
    cdef void glDeleteSamplers(int count, const unsigned int* samplers)
    cdef void glDeleteShader(unsigned int shader)
    cdef void glDeleteStatesNV(int n, const unsigned int* states)
    cdef void glDeleteTextures(int n, const unsigned int* textures)
    cdef void glDeleteTexturesEXT(int n, const unsigned int* textures)
    cdef void glDeleteTransformFeedbacks(int n, const unsigned int* ids)
    cdef void glDeleteTransformFeedbacksNV(int n, const unsigned int* ids)
    cdef void glDeleteVertexArrays(int n, const unsigned int* arrays)
    cdef void glDeleteVertexArraysAPPLE(int n, const unsigned int* arrays)
    cdef void glDeleteVertexShaderEXT(unsigned int id)
    cdef void glDepthBoundsEXT(double zmin, double zmax)
    cdef void glDepthBoundsdNV(double zmin, double zmax)
    cdef void glDepthFunc(unsigned int func)
    cdef void glDepthMask(unsigned char flag)
    cdef void glDepthRange(double near, double far)
    cdef void glDepthRangeArrayv(unsigned int first, int count, const double* v)
    cdef void glDepthRangeIndexed(unsigned int index, double n, double f)
    cdef void glDepthRangedNV(double zNear, double zFar)
    cdef void glDepthRangef(float n, float f)
    cdef void glDepthRangefOES(float n, float f)
    cdef void glDepthRangexOES(GLint n, GLint f)
    cdef void glDetachShader(unsigned int program, unsigned int shader)
    cdef void glDetailTexFuncSGIS(unsigned int target, int n, const float* points)
    cdef void glDisable(unsigned int cap)
    cdef void glDisableClientState(unsigned int array)
    cdef void glDisableClientStateIndexedEXT(unsigned int array, unsigned int index)
    cdef void glDisableClientStateiEXT(unsigned int array, unsigned int index)
    cdef void glDisableIndexedEXT(unsigned int target, unsigned int index)
    cdef void glDisableVariantClientStateEXT(unsigned int id)
    cdef void glDisableVertexArrayAttrib(unsigned int vaobj, unsigned int index)
    cdef void glDisableVertexArrayAttribEXT(unsigned int vaobj, unsigned int index)
    cdef void glDisableVertexArrayEXT(unsigned int vaobj, unsigned int array)
    cdef void glDisableVertexAttribAPPLE(unsigned int index, unsigned int pname)
    cdef void glDisableVertexAttribArray(unsigned int index)
    cdef void glDisableVertexAttribArrayARB(unsigned int index)
    cdef void glDisablei(unsigned int target, unsigned int index)
    cdef void glDispatchCompute(unsigned int num_groups_x, unsigned int num_groups_y, unsigned int num_groups_z)
    cdef void glDispatchComputeGroupSizeARB(unsigned int num_groups_x, unsigned int num_groups_y, unsigned int num_groups_z, unsigned int group_size_x, unsigned int group_size_y, unsigned int group_size_z)
    cdef void glDispatchComputeIndirect(ptrdiff_t indirect)
    cdef void glDrawArrays(unsigned int mode, int first, int count)
    cdef void glDrawArraysEXT(unsigned int mode, int first, int count)
    cdef void glDrawArraysIndirect(unsigned int mode, const void* indirect)
    cdef void glDrawArraysInstanced(unsigned int mode, int first, int count, int instancecount)
    cdef void glDrawArraysInstancedARB(unsigned int mode, int first, int count, int primcount)
    cdef void glDrawArraysInstancedBaseInstance(unsigned int mode, int first, int count, int instancecount, unsigned int baseinstance)
    cdef void glDrawArraysInstancedEXT(unsigned int mode, int start, int count, int primcount)
    cdef void glDrawBuffer(unsigned int buf)
    cdef void glDrawBuffers(int n, const unsigned int* bufs)
    cdef void glDrawBuffersARB(int n, const unsigned int* bufs)
    cdef void glDrawBuffersATI(int n, const unsigned int* bufs)
    cdef void glDrawCommandsAddressNV(unsigned int primitiveMode, const uint64_t* indirects, const int* sizes, unsigned int count)
    cdef void glDrawCommandsNV(unsigned int primitiveMode, unsigned int buffer, const ptrdiff_t* indirects, const int* sizes, unsigned int count)
    cdef void glDrawCommandsStatesAddressNV(const uint64_t* indirects, const int* sizes, const unsigned int* states, const unsigned int* fbos, unsigned int count)
    cdef void glDrawCommandsStatesNV(unsigned int buffer, const ptrdiff_t* indirects, const int* sizes, const unsigned int* states, const unsigned int* fbos, unsigned int count)
    cdef void glDrawElementArrayAPPLE(unsigned int mode, int first, int count)
    cdef void glDrawElementArrayATI(unsigned int mode, int count)
    cdef void glDrawElements(unsigned int mode, int count, unsigned int type, const void* indices)
    cdef void glDrawElementsBaseVertex(unsigned int mode, int count, unsigned int type, const void* indices, int basevertex)
    cdef void glDrawElementsIndirect(unsigned int mode, unsigned int type, const void* indirect)
    cdef void glDrawElementsInstanced(unsigned int mode, int count, unsigned int type, const void* indices, int instancecount)
    cdef void glDrawElementsInstancedARB(unsigned int mode, int count, unsigned int type, const void* indices, int primcount)
    cdef void glDrawElementsInstancedBaseInstance(unsigned int mode, int count, unsigned int type, const void* indices, int instancecount, unsigned int baseinstance)
    cdef void glDrawElementsInstancedBaseVertex(unsigned int mode, int count, unsigned int type, const void* indices, int instancecount, int basevertex)
    cdef void glDrawElementsInstancedBaseVertexBaseInstance(unsigned int mode, int count, unsigned int type, const void* indices, int instancecount, int basevertex, unsigned int baseinstance)
    cdef void glDrawElementsInstancedEXT(unsigned int mode, int count, unsigned int type, const void* indices, int primcount)
    cdef void glDrawMeshArraysSUN(unsigned int mode, int first, int count, int width)
    cdef void glDrawPixels(int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glDrawRangeElementArrayAPPLE(unsigned int mode, unsigned int start, unsigned int end, int first, int count)
    cdef void glDrawRangeElementArrayATI(unsigned int mode, unsigned int start, unsigned int end, int count)
    cdef void glDrawRangeElements(unsigned int mode, unsigned int start, unsigned int end, int count, unsigned int type, const void* indices)
    cdef void glDrawRangeElementsBaseVertex(unsigned int mode, unsigned int start, unsigned int end, int count, unsigned int type, const void* indices, int basevertex)
    cdef void glDrawRangeElementsEXT(unsigned int mode, unsigned int start, unsigned int end, int count, unsigned int type, const void* indices)
    cdef void glDrawTextureNV(unsigned int texture, unsigned int sampler, float x0, float y0, float x1, float y1, float z, float s0, float t0, float s1, float t1)
    cdef void glDrawTransformFeedback(unsigned int mode, unsigned int id)
    cdef void glDrawTransformFeedbackInstanced(unsigned int mode, unsigned int id, int instancecount)
    cdef void glDrawTransformFeedbackNV(unsigned int mode, unsigned int id)
    cdef void glDrawTransformFeedbackStream(unsigned int mode, unsigned int id, unsigned int stream)
    cdef void glDrawTransformFeedbackStreamInstanced(unsigned int mode, unsigned int id, unsigned int stream, int instancecount)
    cdef void glEdgeFlag(unsigned char flag)
    cdef void glEdgeFlagFormatNV(int stride)
    cdef void glEdgeFlagPointer(int stride, const void* pointer)
    cdef void glEdgeFlagPointerEXT(int stride, int count, const unsigned char* pointer)
    cdef void glEdgeFlagPointerListIBM(int stride, const unsigned char** pointer, int ptrstride)
    cdef void glEdgeFlagv(const unsigned char* flag)
    cdef void glElementPointerAPPLE(unsigned int type, const void* pointer)
    cdef void glElementPointerATI(unsigned int type, const void* pointer)
    cdef void glEnable(unsigned int cap)
    cdef void glEnableClientState(unsigned int array)
    cdef void glEnableClientStateIndexedEXT(unsigned int array, unsigned int index)
    cdef void glEnableClientStateiEXT(unsigned int array, unsigned int index)
    cdef void glEnableIndexedEXT(unsigned int target, unsigned int index)
    cdef void glEnableVariantClientStateEXT(unsigned int id)
    cdef void glEnableVertexArrayAttrib(unsigned int vaobj, unsigned int index)
    cdef void glEnableVertexArrayAttribEXT(unsigned int vaobj, unsigned int index)
    cdef void glEnableVertexArrayEXT(unsigned int vaobj, unsigned int array)
    cdef void glEnableVertexAttribAPPLE(unsigned int index, unsigned int pname)
    cdef void glEnableVertexAttribArray(unsigned int index)
    cdef void glEnableVertexAttribArrayARB(unsigned int index)
    cdef void glEnablei(unsigned int target, unsigned int index)
    cdef void glEnd()
    cdef void glEndConditionalRender()
    cdef void glEndConditionalRenderNV()
    cdef void glEndConditionalRenderNVX()
    cdef void glEndFragmentShaderATI()
    cdef void glEndList()
    cdef void glEndOcclusionQueryNV()
    cdef void glEndPerfMonitorAMD(unsigned int monitor)
    cdef void glEndPerfQueryINTEL(unsigned int queryHandle)
    cdef void glEndQuery(unsigned int target)
    cdef void glEndQueryARB(unsigned int target)
    cdef void glEndQueryIndexed(unsigned int target, unsigned int index)
    cdef void glEndTransformFeedback()
    cdef void glEndTransformFeedbackEXT()
    cdef void glEndTransformFeedbackNV()
    cdef void glEndVertexShaderEXT()
    cdef void glEndVideoCaptureNV(unsigned int video_capture_slot)
    cdef void glEvalCoord1d(double u)
    cdef void glEvalCoord1dv(const double* u)
    cdef void glEvalCoord1f(float u)
    cdef void glEvalCoord1fv(const float* u)
    cdef void glEvalCoord1xOES(GLint u)
    cdef void glEvalCoord1xvOES(const GLint* coords)
    cdef void glEvalCoord2d(double u, double v)
    cdef void glEvalCoord2dv(const double* u)
    cdef void glEvalCoord2f(float u, float v)
    cdef void glEvalCoord2fv(const float* u)
    cdef void glEvalCoord2xOES(GLint u, GLint v)
    cdef void glEvalCoord2xvOES(const GLint* coords)
    cdef void glEvalMapsNV(unsigned int target, unsigned int mode)
    cdef void glEvalMesh1(unsigned int mode, int i1, int i2)
    cdef void glEvalMesh2(unsigned int mode, int i1, int i2, int j1, int j2)
    cdef void glEvalPoint1(int i)
    cdef void glEvalPoint2(int i, int j)
    cdef void glEvaluateDepthValuesARB()
    cdef void glExecuteProgramNV(unsigned int target, unsigned int id, const float* params)
    cdef void glExtractComponentEXT(unsigned int res, unsigned int src, unsigned int num)
    cdef void glFeedbackBuffer(int size, unsigned int type, float* buffer)
    cdef void glFeedbackBufferxOES(int n, unsigned int type, const GLint* buffer)
    cdef void glFinalCombinerInputNV(unsigned int variable, unsigned int input, unsigned int mapping, unsigned int componentUsage)
    cdef void glFinish()
    cdef GLint glFinishAsyncSGIX(unsigned int* markerp)
    cdef void glFinishFenceAPPLE(unsigned int fence)
    cdef void glFinishFenceNV(unsigned int fence)
    cdef void glFinishObjectAPPLE(unsigned int object, int name)
    cdef void glFinishTextureSUNX()
    cdef void glFlush()
    cdef void glFlushMappedBufferRange(unsigned int target, ptrdiff_t offset, ptrdiff_t length)
    cdef void glFlushMappedBufferRangeAPPLE(unsigned int target, ptrdiff_t offset, ptrdiff_t size)
    cdef void glFlushMappedNamedBufferRange(unsigned int buffer, ptrdiff_t offset, ptrdiff_t length)
    cdef void glFlushMappedNamedBufferRangeEXT(unsigned int buffer, ptrdiff_t offset, ptrdiff_t length)
    cdef void glFlushPixelDataRangeNV(unsigned int target)
    cdef void glFlushRasterSGIX()
    cdef void glFlushStaticDataIBM(unsigned int target)
    cdef void glFlushVertexArrayRangeAPPLE(int length, void* pointer)
    cdef void glFlushVertexArrayRangeNV()
    cdef void glFogCoordFormatNV(unsigned int type, int stride)
    cdef void glFogCoordPointer(unsigned int type, int stride, const void* pointer)
    cdef void glFogCoordPointerEXT(unsigned int type, int stride, const void* pointer)
    cdef void glFogCoordPointerListIBM(unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glFogCoordd(double coord)
    cdef void glFogCoorddEXT(double coord)
    cdef void glFogCoorddv(const double* coord)
    cdef void glFogCoorddvEXT(const double* coord)
    cdef void glFogCoordf(float coord)
    cdef void glFogCoordfEXT(float coord)
    cdef void glFogCoordfv(const float* coord)
    cdef void glFogCoordfvEXT(const float* coord)
    cdef void glFogCoordhNV(unsigned short fog)
    cdef void glFogCoordhvNV(const unsigned short* fog)
    cdef void glFogFuncSGIS(int n, const float* points)
    cdef void glFogf(unsigned int pname, float param)
    cdef void glFogfv(unsigned int pname, const float* params)
    cdef void glFogi(unsigned int pname, int param)
    cdef void glFogiv(unsigned int pname, const int* params)
    cdef void glFogxOES(unsigned int pname, GLint param)
    cdef void glFogxvOES(unsigned int pname, const GLint* param)
    cdef void glFragmentColorMaterialSGIX(unsigned int face, unsigned int mode)
    cdef void glFragmentCoverageColorNV(unsigned int color)
    cdef void glFragmentLightModelfSGIX(unsigned int pname, float param)
    cdef void glFragmentLightModelfvSGIX(unsigned int pname, const float* params)
    cdef void glFragmentLightModeliSGIX(unsigned int pname, int param)
    cdef void glFragmentLightModelivSGIX(unsigned int pname, const int* params)
    cdef void glFragmentLightfSGIX(unsigned int light, unsigned int pname, float param)
    cdef void glFragmentLightfvSGIX(unsigned int light, unsigned int pname, const float* params)
    cdef void glFragmentLightiSGIX(unsigned int light, unsigned int pname, int param)
    cdef void glFragmentLightivSGIX(unsigned int light, unsigned int pname, const int* params)
    cdef void glFragmentMaterialfSGIX(unsigned int face, unsigned int pname, float param)
    cdef void glFragmentMaterialfvSGIX(unsigned int face, unsigned int pname, const float* params)
    cdef void glFragmentMaterialiSGIX(unsigned int face, unsigned int pname, int param)
    cdef void glFragmentMaterialivSGIX(unsigned int face, unsigned int pname, const int* params)
    cdef void glFrameTerminatorGREMEDY()
    cdef void glFrameZoomSGIX(int factor)
    cdef void glFramebufferDrawBufferEXT(unsigned int framebuffer, unsigned int mode)
    cdef void glFramebufferDrawBuffersEXT(unsigned int framebuffer, int n, const unsigned int* bufs)
    cdef void glFramebufferParameteri(unsigned int target, unsigned int pname, int param)
    cdef void glFramebufferReadBufferEXT(unsigned int framebuffer, unsigned int mode)
    cdef void glFramebufferRenderbuffer(unsigned int target, unsigned int attachment, unsigned int renderbuffertarget, unsigned int renderbuffer)
    cdef void glFramebufferRenderbufferEXT(unsigned int target, unsigned int attachment, unsigned int renderbuffertarget, unsigned int renderbuffer)
    cdef void glFramebufferSampleLocationsfvARB(unsigned int target, unsigned int start, int count, const float* v)
    cdef void glFramebufferSampleLocationsfvNV(unsigned int target, unsigned int start, int count, const float* v)
    cdef void glFramebufferTexture(unsigned int target, unsigned int attachment, unsigned int texture, int level)
    cdef void glFramebufferTexture1D(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glFramebufferTexture1DEXT(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glFramebufferTexture2D(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glFramebufferTexture2DEXT(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glFramebufferTexture3D(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level, int zoffset)
    cdef void glFramebufferTexture3DEXT(unsigned int target, unsigned int attachment, unsigned int textarget, unsigned int texture, int level, int zoffset)
    cdef void glFramebufferTextureARB(unsigned int target, unsigned int attachment, unsigned int texture, int level)
    cdef void glFramebufferTextureEXT(unsigned int target, unsigned int attachment, unsigned int texture, int level)
    cdef void glFramebufferTextureFaceARB(unsigned int target, unsigned int attachment, unsigned int texture, int level, unsigned int face)
    cdef void glFramebufferTextureFaceEXT(unsigned int target, unsigned int attachment, unsigned int texture, int level, unsigned int face)
    cdef void glFramebufferTextureLayer(unsigned int target, unsigned int attachment, unsigned int texture, int level, int layer)
    cdef void glFramebufferTextureLayerARB(unsigned int target, unsigned int attachment, unsigned int texture, int level, int layer)
    cdef void glFramebufferTextureLayerEXT(unsigned int target, unsigned int attachment, unsigned int texture, int level, int layer)
    cdef void glFramebufferTextureMultiviewOVR(unsigned int target, unsigned int attachment, unsigned int texture, int level, int baseViewIndex, int numViews)
    cdef void glFreeObjectBufferATI(unsigned int buffer)
    cdef void glFrontFace(unsigned int mode)
    cdef void glFrustum(double left, double right, double bottom, double top, double zNear, double zFar)
    cdef void glFrustumfOES(float l, float r, float b, float t, float n, float f)
    cdef void glFrustumxOES(GLint l, GLint r, GLint b, GLint t, GLint n, GLint f)
    cdef GLuint glGenAsyncMarkersSGIX(int range)
    cdef void glGenBuffers(int n, unsigned int* buffers)
    cdef void glGenBuffersARB(int n, unsigned int* buffers)
    cdef void glGenFencesAPPLE(int n, unsigned int* fences)
    cdef void glGenFencesNV(int n, unsigned int* fences)
    cdef GLuint glGenFragmentShadersATI(unsigned int range)
    cdef void glGenFramebuffers(int n, unsigned int* framebuffers)
    cdef void glGenFramebuffersEXT(int n, unsigned int* framebuffers)
    cdef GLuint glGenLists(int range)
    cdef void glGenNamesAMD(unsigned int identifier, unsigned int num, unsigned int* names)
    cdef void glGenOcclusionQueriesNV(int n, unsigned int* ids)
    cdef GLuint glGenPathsNV(int range)
    cdef void glGenPerfMonitorsAMD(int n, unsigned int* monitors)
    cdef void glGenProgramPipelines(int n, unsigned int* pipelines)
    cdef void glGenProgramPipelinesEXT(int n, unsigned int* pipelines)
    cdef void glGenProgramsARB(int n, unsigned int* programs)
    cdef void glGenProgramsNV(int n, unsigned int* programs)
    cdef void glGenQueries(int n, unsigned int* ids)
    cdef void glGenQueriesARB(int n, unsigned int* ids)
    cdef void glGenRenderbuffers(int n, unsigned int* renderbuffers)
    cdef void glGenRenderbuffersEXT(int n, unsigned int* renderbuffers)
    cdef void glGenSamplers(int count, unsigned int* samplers)
    cdef GLuint glGenSymbolsEXT(unsigned int datatype, unsigned int storagetype, unsigned int range, unsigned int components)
    cdef void glGenTextures(int n, unsigned int* textures)
    cdef void glGenTexturesEXT(int n, unsigned int* textures)
    cdef void glGenTransformFeedbacks(int n, unsigned int* ids)
    cdef void glGenTransformFeedbacksNV(int n, unsigned int* ids)
    cdef void glGenVertexArrays(int n, unsigned int* arrays)
    cdef void glGenVertexArraysAPPLE(int n, unsigned int* arrays)
    cdef GLuint glGenVertexShadersEXT(unsigned int range)
    cdef void glGenerateMipmap(unsigned int target)
    cdef void glGenerateMipmapEXT(unsigned int target)
    cdef void glGenerateMultiTexMipmapEXT(unsigned int texunit, unsigned int target)
    cdef void glGenerateTextureMipmap(unsigned int texture)
    cdef void glGenerateTextureMipmapEXT(unsigned int texture, unsigned int target)
    cdef void glGetActiveAtomicCounterBufferiv(unsigned int program, unsigned int bufferIndex, unsigned int pname, int* params)
    cdef void glGetActiveAttrib(unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name)
    cdef void glGetActiveSubroutineName(unsigned int program, unsigned int shadertype, unsigned int index, int bufsize, int* length, char* name)
    cdef void glGetActiveSubroutineUniformName(unsigned int program, unsigned int shadertype, unsigned int index, int bufsize, int* length, char* name)
    cdef void glGetActiveSubroutineUniformiv(unsigned int program, unsigned int shadertype, unsigned int index, unsigned int pname, int* values)
    cdef void glGetActiveUniform(unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name)
    cdef void glGetActiveUniformBlockName(unsigned int program, unsigned int uniformBlockIndex, int bufSize, int* length, char* uniformBlockName)
    cdef void glGetActiveUniformBlockiv(unsigned int program, unsigned int uniformBlockIndex, unsigned int pname, int* params)
    cdef void glGetActiveUniformName(unsigned int program, unsigned int uniformIndex, int bufSize, int* length, char* uniformName)
    cdef void glGetActiveUniformsiv(unsigned int program, int uniformCount, const unsigned int* uniformIndices, unsigned int pname, int* params)
    cdef void glGetActiveVaryingNV(unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name)
    cdef void glGetArrayObjectfvATI(unsigned int array, unsigned int pname, float* params)
    cdef void glGetArrayObjectivATI(unsigned int array, unsigned int pname, int* params)
    cdef void glGetAttachedShaders(unsigned int program, int maxCount, int* count, unsigned int* shaders)
    cdef GLint glGetAttribLocation(unsigned int program, const char* name)
    cdef void glGetBooleanIndexedvEXT(unsigned int target, unsigned int index, unsigned char* data)
    cdef void glGetBooleani_v(unsigned int target, unsigned int index, unsigned char* data)
    cdef void glGetBooleanv(unsigned int pname, unsigned char* data)
    cdef void glGetBufferParameteri64v(unsigned int target, unsigned int pname, int64_t* params)
    cdef void glGetBufferParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetBufferParameterivARB(unsigned int target, unsigned int pname, int* params)
    cdef void glGetBufferParameterui64vNV(unsigned int target, unsigned int pname, uint64_t* params)
    cdef void glGetBufferPointerv(unsigned int target, unsigned int pname, void** params)
    cdef void glGetBufferPointervARB(unsigned int target, unsigned int pname, void** params)
    cdef void glGetBufferSubData(unsigned int target, ptrdiff_t offset, ptrdiff_t size, void* data)
    cdef void glGetBufferSubDataARB(unsigned int target, ptrdiff_t offset, ptrdiff_t size, void* data)
    cdef void glGetClipPlane(unsigned int plane, double* equation)
    cdef void glGetClipPlanefOES(unsigned int plane, float* equation)
    cdef void glGetClipPlanexOES(unsigned int plane, GLint* equation)
    cdef void glGetColorTable(unsigned int target, unsigned int format, unsigned int type, void* table)
    cdef void glGetColorTableEXT(unsigned int target, unsigned int format, unsigned int type, void* data)
    cdef void glGetColorTableParameterfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetColorTableParameterfvEXT(unsigned int target, unsigned int pname, float* params)
    cdef void glGetColorTableParameterfvSGI(unsigned int target, unsigned int pname, float* params)
    cdef void glGetColorTableParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetColorTableParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetColorTableParameterivSGI(unsigned int target, unsigned int pname, int* params)
    cdef void glGetColorTableSGI(unsigned int target, unsigned int format, unsigned int type, void* table)
    cdef void glGetCombinerInputParameterfvNV(unsigned int stage, unsigned int portion, unsigned int variable, unsigned int pname, float* params)
    cdef void glGetCombinerInputParameterivNV(unsigned int stage, unsigned int portion, unsigned int variable, unsigned int pname, int* params)
    cdef void glGetCombinerOutputParameterfvNV(unsigned int stage, unsigned int portion, unsigned int pname, float* params)
    cdef void glGetCombinerOutputParameterivNV(unsigned int stage, unsigned int portion, unsigned int pname, int* params)
    cdef void glGetCombinerStageParameterfvNV(unsigned int stage, unsigned int pname, float* params)
    cdef GLuint glGetCommandHeaderNV(unsigned int tokenID, unsigned int size)
    cdef void glGetCompressedMultiTexImageEXT(unsigned int texunit, unsigned int target, int lod, void* img)
    cdef void glGetCompressedTexImage(unsigned int target, int level, void* img)
    cdef void glGetCompressedTexImageARB(unsigned int target, int level, void* img)
    cdef void glGetCompressedTextureImage(unsigned int texture, int level, int bufSize, void* pixels)
    cdef void glGetCompressedTextureImageEXT(unsigned int texture, unsigned int target, int lod, void* img)
    cdef void glGetCompressedTextureSubImage(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int bufSize, void* pixels)
    cdef void glGetConvolutionFilter(unsigned int target, unsigned int format, unsigned int type, void* image)
    cdef void glGetConvolutionFilterEXT(unsigned int target, unsigned int format, unsigned int type, void* image)
    cdef void glGetConvolutionParameterfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetConvolutionParameterfvEXT(unsigned int target, unsigned int pname, float* params)
    cdef void glGetConvolutionParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetConvolutionParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetConvolutionParameterxvOES(unsigned int target, unsigned int pname, GLint* params)
    cdef void glGetCoverageModulationTableNV(int bufsize, float* v)
    cdef GLuint glGetDebugMessageLog(unsigned int count, int bufSize, unsigned int* sources, unsigned int* types, unsigned int* ids, unsigned int* severities, int* lengths, char* messageLog)
    cdef GLuint glGetDebugMessageLogAMD(unsigned int count, int bufsize, unsigned int* categories, unsigned int* severities, unsigned int* ids, int* lengths, char* message)
    cdef GLuint glGetDebugMessageLogARB(unsigned int count, int bufSize, unsigned int* sources, unsigned int* types, unsigned int* ids, unsigned int* severities, int* lengths, char* messageLog)
    cdef GLuint glGetDebugMessageLogKHR(unsigned int count, int bufSize, unsigned int* sources, unsigned int* types, unsigned int* ids, unsigned int* severities, int* lengths, char* messageLog)
    cdef void glGetDetailTexFuncSGIS(unsigned int target, float* points)
    cdef void glGetDoubleIndexedvEXT(unsigned int target, unsigned int index, double* data)
    cdef void glGetDoublei_v(unsigned int target, unsigned int index, double* data)
    cdef void glGetDoublei_vEXT(unsigned int pname, unsigned int index, double* params)
    cdef void glGetDoublev(unsigned int pname, double* data)
    cdef GLenum glGetError()
    cdef void glGetFenceivNV(unsigned int fence, unsigned int pname, int* params)
    cdef void glGetFinalCombinerInputParameterfvNV(unsigned int variable, unsigned int pname, float* params)
    cdef void glGetFinalCombinerInputParameterivNV(unsigned int variable, unsigned int pname, int* params)
    cdef void glGetFirstPerfQueryIdINTEL(unsigned int* queryId)
    cdef void glGetFixedvOES(unsigned int pname, GLint* params)
    cdef void glGetFloatIndexedvEXT(unsigned int target, unsigned int index, float* data)
    cdef void glGetFloati_v(unsigned int target, unsigned int index, float* data)
    cdef void glGetFloati_vEXT(unsigned int pname, unsigned int index, float* params)
    cdef void glGetFloatv(unsigned int pname, float* data)
    cdef void glGetFogFuncSGIS(float* points)
    cdef GLint glGetFragDataIndex(unsigned int program, const char* name)
    cdef GLint glGetFragDataLocation(unsigned int program, const char* name)
    cdef GLint glGetFragDataLocationEXT(unsigned int program, const char* name)
    cdef void glGetFragmentLightfvSGIX(unsigned int light, unsigned int pname, float* params)
    cdef void glGetFragmentLightivSGIX(unsigned int light, unsigned int pname, int* params)
    cdef void glGetFragmentMaterialfvSGIX(unsigned int face, unsigned int pname, float* params)
    cdef void glGetFragmentMaterialivSGIX(unsigned int face, unsigned int pname, int* params)
    cdef void glGetFramebufferAttachmentParameteriv(unsigned int target, unsigned int attachment, unsigned int pname, int* params)
    cdef void glGetFramebufferAttachmentParameterivEXT(unsigned int target, unsigned int attachment, unsigned int pname, int* params)
    cdef void glGetFramebufferParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetFramebufferParameterivEXT(unsigned int framebuffer, unsigned int pname, int* params)
    cdef GLenum glGetGraphicsResetStatus()
    cdef GLenum glGetGraphicsResetStatusARB()
    cdef GLenum glGetGraphicsResetStatusKHR()
    cdef void glGetHistogram(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, void* values)
    cdef void glGetHistogramEXT(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, void* values)
    cdef void glGetHistogramParameterfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetHistogramParameterfvEXT(unsigned int target, unsigned int pname, float* params)
    cdef void glGetHistogramParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetHistogramParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetHistogramParameterxvOES(unsigned int target, unsigned int pname, GLint* params)
    cdef GLuint64 glGetImageHandleARB(unsigned int texture, int level, unsigned char layered, int layer, unsigned int format)
    cdef GLuint64 glGetImageHandleNV(unsigned int texture, int level, unsigned char layered, int layer, unsigned int format)
    cdef void glGetImageTransformParameterfvHP(unsigned int target, unsigned int pname, float* params)
    cdef void glGetImageTransformParameterivHP(unsigned int target, unsigned int pname, int* params)
    cdef GLint glGetInstrumentsSGIX()
    cdef void glGetInteger64i_v(unsigned int target, unsigned int index, int64_t* data)
    cdef void glGetInteger64v(unsigned int pname, int64_t* data)
    cdef void glGetIntegerIndexedvEXT(unsigned int target, unsigned int index, int* data)
    cdef void glGetIntegeri_v(unsigned int target, unsigned int index, int* data)
    cdef void glGetIntegerui64i_vNV(unsigned int value, unsigned int index, uint64_t* result)
    cdef void glGetIntegerui64vNV(unsigned int value, uint64_t* result)
    cdef void glGetIntegerv(unsigned int pname, int* data)
    cdef void glGetInternalformatSampleivNV(unsigned int target, unsigned int internalformat, int samples, unsigned int pname, int bufSize, int* params)
    cdef void glGetInternalformati64v(unsigned int target, unsigned int internalformat, unsigned int pname, int bufSize, int64_t* params)
    cdef void glGetInternalformativ(unsigned int target, unsigned int internalformat, unsigned int pname, int bufSize, int* params)
    cdef void glGetInvariantBooleanvEXT(unsigned int id, unsigned int value, unsigned char* data)
    cdef void glGetInvariantFloatvEXT(unsigned int id, unsigned int value, float* data)
    cdef void glGetInvariantIntegervEXT(unsigned int id, unsigned int value, int* data)
    cdef void glGetLightfv(unsigned int light, unsigned int pname, float* params)
    cdef void glGetLightiv(unsigned int light, unsigned int pname, int* params)
    cdef void glGetLightxOES(unsigned int light, unsigned int pname, GLint* params)
    cdef void glGetLightxvOES(unsigned int light, unsigned int pname, GLint* params)
    cdef void glGetListParameterfvSGIX(unsigned int list, unsigned int pname, float* params)
    cdef void glGetListParameterivSGIX(unsigned int list, unsigned int pname, int* params)
    cdef void glGetLocalConstantBooleanvEXT(unsigned int id, unsigned int value, unsigned char* data)
    cdef void glGetLocalConstantFloatvEXT(unsigned int id, unsigned int value, float* data)
    cdef void glGetLocalConstantIntegervEXT(unsigned int id, unsigned int value, int* data)
    cdef void glGetMapAttribParameterfvNV(unsigned int target, unsigned int index, unsigned int pname, float* params)
    cdef void glGetMapAttribParameterivNV(unsigned int target, unsigned int index, unsigned int pname, int* params)
    cdef void glGetMapControlPointsNV(unsigned int target, unsigned int index, unsigned int type, int ustride, int vstride, unsigned char packed, void* points)
    cdef void glGetMapParameterfvNV(unsigned int target, unsigned int pname, float* params)
    cdef void glGetMapParameterivNV(unsigned int target, unsigned int pname, int* params)
    cdef void glGetMapdv(unsigned int target, unsigned int query, double* v)
    cdef void glGetMapfv(unsigned int target, unsigned int query, float* v)
    cdef void glGetMapiv(unsigned int target, unsigned int query, int* v)
    cdef void glGetMapxvOES(unsigned int target, unsigned int query, GLint* v)
    cdef void glGetMaterialfv(unsigned int face, unsigned int pname, float* params)
    cdef void glGetMaterialiv(unsigned int face, unsigned int pname, int* params)
    cdef void glGetMaterialxOES(unsigned int face, unsigned int pname, GLint param)
    cdef void glGetMaterialxvOES(unsigned int face, unsigned int pname, GLint* params)
    cdef void glGetMinmax(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, void* values)
    cdef void glGetMinmaxEXT(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, void* values)
    cdef void glGetMinmaxParameterfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetMinmaxParameterfvEXT(unsigned int target, unsigned int pname, float* params)
    cdef void glGetMinmaxParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetMinmaxParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetMultiTexEnvfvEXT(unsigned int texunit, unsigned int target, unsigned int pname, float* params)
    cdef void glGetMultiTexEnvivEXT(unsigned int texunit, unsigned int target, unsigned int pname, int* params)
    cdef void glGetMultiTexGendvEXT(unsigned int texunit, unsigned int coord, unsigned int pname, double* params)
    cdef void glGetMultiTexGenfvEXT(unsigned int texunit, unsigned int coord, unsigned int pname, float* params)
    cdef void glGetMultiTexGenivEXT(unsigned int texunit, unsigned int coord, unsigned int pname, int* params)
    cdef void glGetMultiTexImageEXT(unsigned int texunit, unsigned int target, int level, unsigned int format, unsigned int type, void* pixels)
    cdef void glGetMultiTexLevelParameterfvEXT(unsigned int texunit, unsigned int target, int level, unsigned int pname, float* params)
    cdef void glGetMultiTexLevelParameterivEXT(unsigned int texunit, unsigned int target, int level, unsigned int pname, int* params)
    cdef void glGetMultiTexParameterIivEXT(unsigned int texunit, unsigned int target, unsigned int pname, int* params)
    cdef void glGetMultiTexParameterIuivEXT(unsigned int texunit, unsigned int target, unsigned int pname, unsigned int* params)
    cdef void glGetMultiTexParameterfvEXT(unsigned int texunit, unsigned int target, unsigned int pname, float* params)
    cdef void glGetMultiTexParameterivEXT(unsigned int texunit, unsigned int target, unsigned int pname, int* params)
    cdef void glGetMultisamplefv(unsigned int pname, unsigned int index, float* val)
    cdef void glGetMultisamplefvNV(unsigned int pname, unsigned int index, float* val)
    cdef void glGetNamedBufferParameteri64v(unsigned int buffer, unsigned int pname, int64_t* params)
    cdef void glGetNamedBufferParameteriv(unsigned int buffer, unsigned int pname, int* params)
    cdef void glGetNamedBufferParameterivEXT(unsigned int buffer, unsigned int pname, int* params)
    cdef void glGetNamedBufferParameterui64vNV(unsigned int buffer, unsigned int pname, uint64_t* params)
    cdef void glGetNamedBufferPointerv(unsigned int buffer, unsigned int pname, void** params)
    cdef void glGetNamedBufferPointervEXT(unsigned int buffer, unsigned int pname, void** params)
    cdef void glGetNamedBufferSubData(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, void* data)
    cdef void glGetNamedBufferSubDataEXT(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, void* data)
    cdef void glGetNamedFramebufferAttachmentParameteriv(unsigned int framebuffer, unsigned int attachment, unsigned int pname, int* params)
    cdef void glGetNamedFramebufferAttachmentParameterivEXT(unsigned int framebuffer, unsigned int attachment, unsigned int pname, int* params)
    cdef void glGetNamedFramebufferParameteriv(unsigned int framebuffer, unsigned int pname, int* param)
    cdef void glGetNamedFramebufferParameterivEXT(unsigned int framebuffer, unsigned int pname, int* params)
    cdef void glGetNamedProgramLocalParameterIivEXT(unsigned int program, unsigned int target, unsigned int index, int* params)
    cdef void glGetNamedProgramLocalParameterIuivEXT(unsigned int program, unsigned int target, unsigned int index, unsigned int* params)
    cdef void glGetNamedProgramLocalParameterdvEXT(unsigned int program, unsigned int target, unsigned int index, double* params)
    cdef void glGetNamedProgramLocalParameterfvEXT(unsigned int program, unsigned int target, unsigned int index, float* params)
    cdef void glGetNamedProgramStringEXT(unsigned int program, unsigned int target, unsigned int pname, void* string)
    cdef void glGetNamedProgramivEXT(unsigned int program, unsigned int target, unsigned int pname, int* params)
    cdef void glGetNamedRenderbufferParameteriv(unsigned int renderbuffer, unsigned int pname, int* params)
    cdef void glGetNamedRenderbufferParameterivEXT(unsigned int renderbuffer, unsigned int pname, int* params)
    cdef void glGetNamedStringARB(int namelen, const char* name, int bufSize, int* stringlen, char* string)
    cdef void glGetNamedStringivARB(int namelen, const char* name, unsigned int pname, int* params)
    cdef void glGetNextPerfQueryIdINTEL(unsigned int queryId, unsigned int* nextQueryId)
    cdef void glGetObjectBufferfvATI(unsigned int buffer, unsigned int pname, float* params)
    cdef void glGetObjectBufferivATI(unsigned int buffer, unsigned int pname, int* params)
    cdef void glGetObjectLabel(unsigned int identifier, unsigned int name, int bufSize, int* length, char* label)
    cdef void glGetObjectLabelEXT(unsigned int type, unsigned int object, int bufSize, int* length, char* label)
    cdef void glGetObjectLabelKHR(unsigned int identifier, unsigned int name, int bufSize, int* length, char* label)
    cdef void glGetObjectParameterivAPPLE(unsigned int objectType, unsigned int name, unsigned int pname, int* params)
    cdef void glGetObjectPtrLabel(const void* ptr, int bufSize, int* length, char* label)
    cdef void glGetObjectPtrLabelKHR(const void* ptr, int bufSize, int* length, char* label)
    cdef void glGetOcclusionQueryivNV(unsigned int id, unsigned int pname, int* params)
    cdef void glGetOcclusionQueryuivNV(unsigned int id, unsigned int pname, unsigned int* params)
    cdef void glGetPathColorGenfvNV(unsigned int color, unsigned int pname, float* value)
    cdef void glGetPathColorGenivNV(unsigned int color, unsigned int pname, int* value)
    cdef void glGetPathCommandsNV(unsigned int path, unsigned char* commands)
    cdef void glGetPathCoordsNV(unsigned int path, float* coords)
    cdef void glGetPathDashArrayNV(unsigned int path, float* dashArray)
    cdef GLfloat glGetPathLengthNV(unsigned int path, int startSegment, int numSegments)
    cdef void glGetPathMetricRangeNV(unsigned int metricQueryMask, unsigned int firstPathName, int numPaths, int stride, float* metrics)
    cdef void glGetPathMetricsNV(unsigned int metricQueryMask, int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, int stride, float* metrics)
    cdef void glGetPathParameterfvNV(unsigned int path, unsigned int pname, float* value)
    cdef void glGetPathParameterivNV(unsigned int path, unsigned int pname, int* value)
    cdef void glGetPathSpacingNV(unsigned int pathListMode, int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, float advanceScale, float kerningScale, unsigned int transformType, float* returnedSpacing)
    cdef void glGetPathTexGenfvNV(unsigned int texCoordSet, unsigned int pname, float* value)
    cdef void glGetPathTexGenivNV(unsigned int texCoordSet, unsigned int pname, int* value)
    cdef void glGetPerfCounterInfoINTEL(unsigned int queryId, unsigned int counterId, unsigned int counterNameLength, char* counterName, unsigned int counterDescLength, char* counterDesc, unsigned int* counterOffset, unsigned int* counterDataSize, unsigned int* counterTypeEnum, unsigned int* counterDataTypeEnum, uint64_t* rawCounterMaxValue)
    cdef void glGetPerfMonitorCounterDataAMD(unsigned int monitor, unsigned int pname, int dataSize, unsigned int* data, int* bytesWritten)
    cdef void glGetPerfMonitorCounterInfoAMD(unsigned int group, unsigned int counter, unsigned int pname, void* data)
    cdef void glGetPerfMonitorCounterStringAMD(unsigned int group, unsigned int counter, int bufSize, int* length, char* counterString)
    cdef void glGetPerfMonitorCountersAMD(unsigned int group, int* numCounters, int* maxActiveCounters, int counterSize, unsigned int* counters)
    cdef void glGetPerfMonitorGroupStringAMD(unsigned int group, int bufSize, int* length, char* groupString)
    cdef void glGetPerfMonitorGroupsAMD(int* numGroups, int groupsSize, unsigned int* groups)
    cdef void glGetPerfQueryDataINTEL(unsigned int queryHandle, unsigned int flags, int dataSize, void* data, unsigned int* bytesWritten)
    cdef void glGetPerfQueryIdByNameINTEL(char* queryName, unsigned int* queryId)
    cdef void glGetPerfQueryInfoINTEL(unsigned int queryId, unsigned int queryNameLength, char* queryName, unsigned int* dataSize, unsigned int* noCounters, unsigned int* noInstances, unsigned int* capsMask)
    cdef void glGetPixelMapfv(unsigned int map, float* values)
    cdef void glGetPixelMapuiv(unsigned int map, unsigned int* values)
    cdef void glGetPixelMapusv(unsigned int map, unsigned short* values)
    cdef void glGetPixelMapxv(unsigned int map, int size, GLint* values)
    cdef void glGetPixelTexGenParameterfvSGIS(unsigned int pname, float* params)
    cdef void glGetPixelTexGenParameterivSGIS(unsigned int pname, int* params)
    cdef void glGetPixelTransformParameterfvEXT(unsigned int target, unsigned int pname, float* params)
    cdef void glGetPixelTransformParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetPointerIndexedvEXT(unsigned int target, unsigned int index, void** data)
    cdef void glGetPointeri_vEXT(unsigned int pname, unsigned int index, void** params)
    cdef void glGetPointerv(unsigned int pname, void** params)
    cdef void glGetPointervEXT(unsigned int pname, void** params)
    cdef void glGetPointervKHR(unsigned int pname, void** params)
    cdef void glGetPolygonStipple(unsigned char* mask)
    cdef void glGetProgramBinary(unsigned int program, int bufSize, int* length, unsigned int* binaryFormat, void* binary)
    cdef void glGetProgramEnvParameterIivNV(unsigned int target, unsigned int index, int* params)
    cdef void glGetProgramEnvParameterIuivNV(unsigned int target, unsigned int index, unsigned int* params)
    cdef void glGetProgramEnvParameterdvARB(unsigned int target, unsigned int index, double* params)
    cdef void glGetProgramEnvParameterfvARB(unsigned int target, unsigned int index, float* params)
    cdef void glGetProgramInfoLog(unsigned int program, int bufSize, int* length, char* infoLog)
    cdef void glGetProgramInterfaceiv(unsigned int program, unsigned int programInterface, unsigned int pname, int* params)
    cdef void glGetProgramLocalParameterIivNV(unsigned int target, unsigned int index, int* params)
    cdef void glGetProgramLocalParameterIuivNV(unsigned int target, unsigned int index, unsigned int* params)
    cdef void glGetProgramLocalParameterdvARB(unsigned int target, unsigned int index, double* params)
    cdef void glGetProgramLocalParameterfvARB(unsigned int target, unsigned int index, float* params)
    cdef void glGetProgramNamedParameterdvNV(unsigned int id, int len, const unsigned char* name, double* params)
    cdef void glGetProgramNamedParameterfvNV(unsigned int id, int len, const unsigned char* name, float* params)
    cdef void glGetProgramParameterdvNV(unsigned int target, unsigned int index, unsigned int pname, double* params)
    cdef void glGetProgramParameterfvNV(unsigned int target, unsigned int index, unsigned int pname, float* params)
    cdef void glGetProgramPipelineInfoLog(unsigned int pipeline, int bufSize, int* length, char* infoLog)
    cdef void glGetProgramPipelineInfoLogEXT(unsigned int pipeline, int bufSize, int* length, char* infoLog)
    cdef void glGetProgramPipelineiv(unsigned int pipeline, unsigned int pname, int* params)
    cdef void glGetProgramPipelineivEXT(unsigned int pipeline, unsigned int pname, int* params)
    cdef GLuint glGetProgramResourceIndex(unsigned int program, unsigned int programInterface, const char* name)
    cdef GLint glGetProgramResourceLocation(unsigned int program, unsigned int programInterface, const char* name)
    cdef GLint glGetProgramResourceLocationIndex(unsigned int program, unsigned int programInterface, const char* name)
    cdef void glGetProgramResourceName(unsigned int program, unsigned int programInterface, unsigned int index, int bufSize, int* length, char* name)
    cdef void glGetProgramResourcefvNV(unsigned int program, unsigned int programInterface, unsigned int index, int propCount, const unsigned int* props, int bufSize, int* length, float* params)
    cdef void glGetProgramResourceiv(unsigned int program, unsigned int programInterface, unsigned int index, int propCount, const unsigned int* props, int bufSize, int* length, int* params)
    cdef void glGetProgramStageiv(unsigned int program, unsigned int shadertype, unsigned int pname, int* values)
    cdef void glGetProgramStringARB(unsigned int target, unsigned int pname, void* string)
    cdef void glGetProgramStringNV(unsigned int id, unsigned int pname, unsigned char* program)
    cdef void glGetProgramSubroutineParameteruivNV(unsigned int target, unsigned int index, unsigned int* param)
    cdef void glGetProgramiv(unsigned int program, unsigned int pname, int* params)
    cdef void glGetProgramivARB(unsigned int target, unsigned int pname, int* params)
    cdef void glGetProgramivNV(unsigned int id, unsigned int pname, int* params)
    cdef void glGetQueryBufferObjecti64v(unsigned int id, unsigned int buffer, unsigned int pname, ptrdiff_t offset)
    cdef void glGetQueryBufferObjectiv(unsigned int id, unsigned int buffer, unsigned int pname, ptrdiff_t offset)
    cdef void glGetQueryBufferObjectui64v(unsigned int id, unsigned int buffer, unsigned int pname, ptrdiff_t offset)
    cdef void glGetQueryBufferObjectuiv(unsigned int id, unsigned int buffer, unsigned int pname, ptrdiff_t offset)
    cdef void glGetQueryIndexediv(unsigned int target, unsigned int index, unsigned int pname, int* params)
    cdef void glGetQueryObjecti64v(unsigned int id, unsigned int pname, int64_t* params)
    cdef void glGetQueryObjecti64vEXT(unsigned int id, unsigned int pname, int64_t* params)
    cdef void glGetQueryObjectiv(unsigned int id, unsigned int pname, int* params)
    cdef void glGetQueryObjectivARB(unsigned int id, unsigned int pname, int* params)
    cdef void glGetQueryObjectui64v(unsigned int id, unsigned int pname, uint64_t* params)
    cdef void glGetQueryObjectui64vEXT(unsigned int id, unsigned int pname, uint64_t* params)
    cdef void glGetQueryObjectuiv(unsigned int id, unsigned int pname, unsigned int* params)
    cdef void glGetQueryObjectuivARB(unsigned int id, unsigned int pname, unsigned int* params)
    cdef void glGetQueryiv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetQueryivARB(unsigned int target, unsigned int pname, int* params)
    cdef void glGetRenderbufferParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetRenderbufferParameterivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetSamplerParameterIiv(unsigned int sampler, unsigned int pname, int* params)
    cdef void glGetSamplerParameterIuiv(unsigned int sampler, unsigned int pname, unsigned int* params)
    cdef void glGetSamplerParameterfv(unsigned int sampler, unsigned int pname, float* params)
    cdef void glGetSamplerParameteriv(unsigned int sampler, unsigned int pname, int* params)
    cdef void glGetSeparableFilter(unsigned int target, unsigned int format, unsigned int type, void* row, void* column, void* span)
    cdef void glGetSeparableFilterEXT(unsigned int target, unsigned int format, unsigned int type, void* row, void* column, void* span)
    cdef void glGetShaderInfoLog(unsigned int shader, int bufSize, int* length, char* infoLog)
    cdef void glGetShaderPrecisionFormat(unsigned int shadertype, unsigned int precisiontype, int* range, int* precision)
    cdef void glGetShaderSource(unsigned int shader, int bufSize, int* length, char* source)
    cdef void glGetShaderiv(unsigned int shader, unsigned int pname, int* params)
    cdef void glGetSharpenTexFuncSGIS(unsigned int target, float* points)
    cdef GLushort glGetStageIndexNV(unsigned int shadertype)
    cdef const(GLubyte)* glGetString(unsigned int name)
    cdef const(GLubyte)* glGetStringi(unsigned int name, unsigned int index)
    cdef GLuint glGetSubroutineIndex(unsigned int program, unsigned int shadertype, const char* name)
    cdef GLint glGetSubroutineUniformLocation(unsigned int program, unsigned int shadertype, const char* name)
    cdef void glGetTexBumpParameterfvATI(unsigned int pname, float* param)
    cdef void glGetTexBumpParameterivATI(unsigned int pname, int* param)
    cdef void glGetTexEnvfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetTexEnviv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetTexEnvxvOES(unsigned int target, unsigned int pname, GLint* params)
    cdef void glGetTexFilterFuncSGIS(unsigned int target, unsigned int filter, float* weights)
    cdef void glGetTexGendv(unsigned int coord, unsigned int pname, double* params)
    cdef void glGetTexGenfv(unsigned int coord, unsigned int pname, float* params)
    cdef void glGetTexGeniv(unsigned int coord, unsigned int pname, int* params)
    cdef void glGetTexGenxvOES(unsigned int coord, unsigned int pname, GLint* params)
    cdef void glGetTexImage(unsigned int target, int level, unsigned int format, unsigned int type, void* pixels)
    cdef void glGetTexLevelParameterfv(unsigned int target, int level, unsigned int pname, float* params)
    cdef void glGetTexLevelParameteriv(unsigned int target, int level, unsigned int pname, int* params)
    cdef void glGetTexLevelParameterxvOES(unsigned int target, int level, unsigned int pname, GLint* params)
    cdef void glGetTexParameterIiv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetTexParameterIivEXT(unsigned int target, unsigned int pname, int* params)
    cdef void glGetTexParameterIuiv(unsigned int target, unsigned int pname, unsigned int* params)
    cdef void glGetTexParameterIuivEXT(unsigned int target, unsigned int pname, unsigned int* params)
    cdef void glGetTexParameterPointervAPPLE(unsigned int target, unsigned int pname, void** params)
    cdef void glGetTexParameterfv(unsigned int target, unsigned int pname, float* params)
    cdef void glGetTexParameteriv(unsigned int target, unsigned int pname, int* params)
    cdef void glGetTexParameterxvOES(unsigned int target, unsigned int pname, GLint* params)
    cdef GLuint64 glGetTextureHandleARB(unsigned int texture)
    cdef GLuint64 glGetTextureHandleNV(unsigned int texture)
    cdef void glGetTextureImage(unsigned int texture, int level, unsigned int format, unsigned int type, int bufSize, void* pixels)
    cdef void glGetTextureImageEXT(unsigned int texture, unsigned int target, int level, unsigned int format, unsigned int type, void* pixels)
    cdef void glGetTextureLevelParameterfv(unsigned int texture, int level, unsigned int pname, float* params)
    cdef void glGetTextureLevelParameterfvEXT(unsigned int texture, unsigned int target, int level, unsigned int pname, float* params)
    cdef void glGetTextureLevelParameteriv(unsigned int texture, int level, unsigned int pname, int* params)
    cdef void glGetTextureLevelParameterivEXT(unsigned int texture, unsigned int target, int level, unsigned int pname, int* params)
    cdef void glGetTextureParameterIiv(unsigned int texture, unsigned int pname, int* params)
    cdef void glGetTextureParameterIivEXT(unsigned int texture, unsigned int target, unsigned int pname, int* params)
    cdef void glGetTextureParameterIuiv(unsigned int texture, unsigned int pname, unsigned int* params)
    cdef void glGetTextureParameterIuivEXT(unsigned int texture, unsigned int target, unsigned int pname, unsigned int* params)
    cdef void glGetTextureParameterfv(unsigned int texture, unsigned int pname, float* params)
    cdef void glGetTextureParameterfvEXT(unsigned int texture, unsigned int target, unsigned int pname, float* params)
    cdef void glGetTextureParameteriv(unsigned int texture, unsigned int pname, int* params)
    cdef void glGetTextureParameterivEXT(unsigned int texture, unsigned int target, unsigned int pname, int* params)
    cdef GLuint64 glGetTextureSamplerHandleARB(unsigned int texture, unsigned int sampler)
    cdef GLuint64 glGetTextureSamplerHandleNV(unsigned int texture, unsigned int sampler)
    cdef void glGetTextureSubImage(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, int bufSize, void* pixels)
    cdef void glGetTrackMatrixivNV(unsigned int target, unsigned int address, unsigned int pname, int* params)
    cdef void glGetTransformFeedbackVarying(unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name)
    cdef void glGetTransformFeedbackVaryingEXT(unsigned int program, unsigned int index, int bufSize, int* length, int* size, unsigned int* type, char* name)
    cdef void glGetTransformFeedbackVaryingNV(unsigned int program, unsigned int index, int* location)
    cdef void glGetTransformFeedbacki64_v(unsigned int xfb, unsigned int pname, unsigned int index, int64_t* param)
    cdef void glGetTransformFeedbacki_v(unsigned int xfb, unsigned int pname, unsigned int index, int* param)
    cdef void glGetTransformFeedbackiv(unsigned int xfb, unsigned int pname, int* param)
    cdef GLuint glGetUniformBlockIndex(unsigned int program, const char* uniformBlockName)
    cdef GLint glGetUniformBufferSizeEXT(unsigned int program, int location)
    cdef void glGetUniformIndices(unsigned int program, int uniformCount, const char** uniformNames, unsigned int* uniformIndices)
    cdef GLint glGetUniformLocation(unsigned int program, const char* name)
    cdef GLintptr glGetUniformOffsetEXT(unsigned int program, int location)
    cdef void glGetUniformSubroutineuiv(unsigned int shadertype, int location, unsigned int* params)
    cdef void glGetUniformdv(unsigned int program, int location, double* params)
    cdef void glGetUniformfv(unsigned int program, int location, float* params)
    cdef void glGetUniformi64vARB(unsigned int program, int location, int64_t* params)
    cdef void glGetUniformi64vNV(unsigned int program, int location, int64_t* params)
    cdef void glGetUniformiv(unsigned int program, int location, int* params)
    cdef void glGetUniformui64vARB(unsigned int program, int location, uint64_t* params)
    cdef void glGetUniformui64vNV(unsigned int program, int location, uint64_t* params)
    cdef void glGetUniformuiv(unsigned int program, int location, unsigned int* params)
    cdef void glGetUniformuivEXT(unsigned int program, int location, unsigned int* params)
    cdef void glGetVariantArrayObjectfvATI(unsigned int id, unsigned int pname, float* params)
    cdef void glGetVariantArrayObjectivATI(unsigned int id, unsigned int pname, int* params)
    cdef void glGetVariantBooleanvEXT(unsigned int id, unsigned int value, unsigned char* data)
    cdef void glGetVariantFloatvEXT(unsigned int id, unsigned int value, float* data)
    cdef void glGetVariantIntegervEXT(unsigned int id, unsigned int value, int* data)
    cdef void glGetVariantPointervEXT(unsigned int id, unsigned int value, void** data)
    cdef GLint glGetVaryingLocationNV(unsigned int program, const char* name)
    cdef void glGetVertexArrayIndexed64iv(unsigned int vaobj, unsigned int index, unsigned int pname, int64_t* param)
    cdef void glGetVertexArrayIndexediv(unsigned int vaobj, unsigned int index, unsigned int pname, int* param)
    cdef void glGetVertexArrayIntegeri_vEXT(unsigned int vaobj, unsigned int index, unsigned int pname, int* param)
    cdef void glGetVertexArrayIntegervEXT(unsigned int vaobj, unsigned int pname, int* param)
    cdef void glGetVertexArrayPointeri_vEXT(unsigned int vaobj, unsigned int index, unsigned int pname, void** param)
    cdef void glGetVertexArrayPointervEXT(unsigned int vaobj, unsigned int pname, void** param)
    cdef void glGetVertexArrayiv(unsigned int vaobj, unsigned int pname, int* param)
    cdef void glGetVertexAttribArrayObjectfvATI(unsigned int index, unsigned int pname, float* params)
    cdef void glGetVertexAttribArrayObjectivATI(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVertexAttribIiv(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVertexAttribIivEXT(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVertexAttribIuiv(unsigned int index, unsigned int pname, unsigned int* params)
    cdef void glGetVertexAttribIuivEXT(unsigned int index, unsigned int pname, unsigned int* params)
    cdef void glGetVertexAttribLdv(unsigned int index, unsigned int pname, double* params)
    cdef void glGetVertexAttribLdvEXT(unsigned int index, unsigned int pname, double* params)
    cdef void glGetVertexAttribLi64vNV(unsigned int index, unsigned int pname, int64_t* params)
    cdef void glGetVertexAttribLui64vARB(unsigned int index, unsigned int pname, uint64_t* params)
    cdef void glGetVertexAttribLui64vNV(unsigned int index, unsigned int pname, uint64_t* params)
    cdef void glGetVertexAttribPointerv(unsigned int index, unsigned int pname, void** pointer)
    cdef void glGetVertexAttribPointervARB(unsigned int index, unsigned int pname, void** pointer)
    cdef void glGetVertexAttribPointervNV(unsigned int index, unsigned int pname, void** pointer)
    cdef void glGetVertexAttribdv(unsigned int index, unsigned int pname, double* params)
    cdef void glGetVertexAttribdvARB(unsigned int index, unsigned int pname, double* params)
    cdef void glGetVertexAttribdvNV(unsigned int index, unsigned int pname, double* params)
    cdef void glGetVertexAttribfv(unsigned int index, unsigned int pname, float* params)
    cdef void glGetVertexAttribfvARB(unsigned int index, unsigned int pname, float* params)
    cdef void glGetVertexAttribfvNV(unsigned int index, unsigned int pname, float* params)
    cdef void glGetVertexAttribiv(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVertexAttribivARB(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVertexAttribivNV(unsigned int index, unsigned int pname, int* params)
    cdef void glGetVideoCaptureStreamdvNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, double* params)
    cdef void glGetVideoCaptureStreamfvNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, float* params)
    cdef void glGetVideoCaptureStreamivNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, int* params)
    cdef void glGetVideoCaptureivNV(unsigned int video_capture_slot, unsigned int pname, int* params)
    cdef void glGetVideoi64vNV(unsigned int video_slot, unsigned int pname, int64_t* params)
    cdef void glGetVideoivNV(unsigned int video_slot, unsigned int pname, int* params)
    cdef void glGetVideoui64vNV(unsigned int video_slot, unsigned int pname, uint64_t* params)
    cdef void glGetVideouivNV(unsigned int video_slot, unsigned int pname, unsigned int* params)
    cdef void glGetnColorTable(unsigned int target, unsigned int format, unsigned int type, int bufSize, void* table)
    cdef void glGetnColorTableARB(unsigned int target, unsigned int format, unsigned int type, int bufSize, void* table)
    cdef void glGetnCompressedTexImage(unsigned int target, int lod, int bufSize, void* pixels)
    cdef void glGetnCompressedTexImageARB(unsigned int target, int lod, int bufSize, void* img)
    cdef void glGetnConvolutionFilter(unsigned int target, unsigned int format, unsigned int type, int bufSize, void* image)
    cdef void glGetnConvolutionFilterARB(unsigned int target, unsigned int format, unsigned int type, int bufSize, void* image)
    cdef void glGetnHistogram(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, int bufSize, void* values)
    cdef void glGetnHistogramARB(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, int bufSize, void* values)
    cdef void glGetnMapdv(unsigned int target, unsigned int query, int bufSize, double* v)
    cdef void glGetnMapdvARB(unsigned int target, unsigned int query, int bufSize, double* v)
    cdef void glGetnMapfv(unsigned int target, unsigned int query, int bufSize, float* v)
    cdef void glGetnMapfvARB(unsigned int target, unsigned int query, int bufSize, float* v)
    cdef void glGetnMapiv(unsigned int target, unsigned int query, int bufSize, int* v)
    cdef void glGetnMapivARB(unsigned int target, unsigned int query, int bufSize, int* v)
    cdef void glGetnMinmax(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, int bufSize, void* values)
    cdef void glGetnMinmaxARB(unsigned int target, unsigned char reset, unsigned int format, unsigned int type, int bufSize, void* values)
    cdef void glGetnPixelMapfv(unsigned int map, int bufSize, float* values)
    cdef void glGetnPixelMapfvARB(unsigned int map, int bufSize, float* values)
    cdef void glGetnPixelMapuiv(unsigned int map, int bufSize, unsigned int* values)
    cdef void glGetnPixelMapuivARB(unsigned int map, int bufSize, unsigned int* values)
    cdef void glGetnPixelMapusv(unsigned int map, int bufSize, unsigned short* values)
    cdef void glGetnPixelMapusvARB(unsigned int map, int bufSize, unsigned short* values)
    cdef void glGetnPolygonStipple(int bufSize, unsigned char* pattern)
    cdef void glGetnPolygonStippleARB(int bufSize, unsigned char* pattern)
    cdef void glGetnSeparableFilter(unsigned int target, unsigned int format, unsigned int type, int rowBufSize, void* row, int columnBufSize, void* column, void* span)
    cdef void glGetnSeparableFilterARB(unsigned int target, unsigned int format, unsigned int type, int rowBufSize, void* row, int columnBufSize, void* column, void* span)
    cdef void glGetnTexImage(unsigned int target, int level, unsigned int format, unsigned int type, int bufSize, void* pixels)
    cdef void glGetnTexImageARB(unsigned int target, int level, unsigned int format, unsigned int type, int bufSize, void* img)
    cdef void glGetnUniformdv(unsigned int program, int location, int bufSize, double* params)
    cdef void glGetnUniformdvARB(unsigned int program, int location, int bufSize, double* params)
    cdef void glGetnUniformfv(unsigned int program, int location, int bufSize, float* params)
    cdef void glGetnUniformfvARB(unsigned int program, int location, int bufSize, float* params)
    cdef void glGetnUniformfvKHR(unsigned int program, int location, int bufSize, float* params)
    cdef void glGetnUniformi64vARB(unsigned int program, int location, int bufSize, int64_t* params)
    cdef void glGetnUniformiv(unsigned int program, int location, int bufSize, int* params)
    cdef void glGetnUniformivARB(unsigned int program, int location, int bufSize, int* params)
    cdef void glGetnUniformivKHR(unsigned int program, int location, int bufSize, int* params)
    cdef void glGetnUniformui64vARB(unsigned int program, int location, int bufSize, uint64_t* params)
    cdef void glGetnUniformuiv(unsigned int program, int location, int bufSize, unsigned int* params)
    cdef void glGetnUniformuivARB(unsigned int program, int location, int bufSize, unsigned int* params)
    cdef void glGetnUniformuivKHR(unsigned int program, int location, int bufSize, unsigned int* params)
    cdef void glGlobalAlphaFactorbSUN(signed char factor)
    cdef void glGlobalAlphaFactordSUN(double factor)
    cdef void glGlobalAlphaFactorfSUN(float factor)
    cdef void glGlobalAlphaFactoriSUN(int factor)
    cdef void glGlobalAlphaFactorsSUN(short factor)
    cdef void glGlobalAlphaFactorubSUN(unsigned char factor)
    cdef void glGlobalAlphaFactoruiSUN(unsigned int factor)
    cdef void glGlobalAlphaFactorusSUN(unsigned short factor)
    cdef void glHint(unsigned int target, unsigned int mode)
    cdef void glHintPGI(unsigned int target, int mode)
    cdef void glHistogram(unsigned int target, int width, unsigned int internalformat, unsigned char sink)
    cdef void glHistogramEXT(unsigned int target, int width, unsigned int internalformat, unsigned char sink)
    cdef void glIglooInterfaceSGIX(unsigned int pname, const void* params)
    cdef void glImageTransformParameterfHP(unsigned int target, unsigned int pname, float param)
    cdef void glImageTransformParameterfvHP(unsigned int target, unsigned int pname, const float* params)
    cdef void glImageTransformParameteriHP(unsigned int target, unsigned int pname, int param)
    cdef void glImageTransformParameterivHP(unsigned int target, unsigned int pname, const int* params)
    cdef void glIndexFormatNV(unsigned int type, int stride)
    cdef void glIndexFuncEXT(unsigned int func, float ref)
    cdef void glIndexMask(unsigned int mask)
    cdef void glIndexMaterialEXT(unsigned int face, unsigned int mode)
    cdef void glIndexPointer(unsigned int type, int stride, const void* pointer)
    cdef void glIndexPointerEXT(unsigned int type, int stride, int count, const void* pointer)
    cdef void glIndexPointerListIBM(unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glIndexd(double c)
    cdef void glIndexdv(const double* c)
    cdef void glIndexf(float c)
    cdef void glIndexfv(const float* c)
    cdef void glIndexi(int c)
    cdef void glIndexiv(const int* c)
    cdef void glIndexs(short c)
    cdef void glIndexsv(const short* c)
    cdef void glIndexub(unsigned char c)
    cdef void glIndexubv(const unsigned char* c)
    cdef void glIndexxOES(GLint component)
    cdef void glIndexxvOES(const GLint* component)
    cdef void glInitNames()
    cdef void glInsertComponentEXT(unsigned int res, unsigned int src, unsigned int num)
    cdef void glInsertEventMarkerEXT(int length, const char* marker)
    cdef void glInstrumentsBufferSGIX(int size, int* buffer)
    cdef void glInterleavedArrays(unsigned int format, int stride, const void* pointer)
    cdef void glInterpolatePathsNV(unsigned int resultPath, unsigned int pathA, unsigned int pathB, float weight)
    cdef void glInvalidateBufferData(unsigned int buffer)
    cdef void glInvalidateBufferSubData(unsigned int buffer, ptrdiff_t offset, ptrdiff_t length)
    cdef void glInvalidateFramebuffer(unsigned int target, int numAttachments, const unsigned int* attachments)
    cdef void glInvalidateNamedFramebufferData(unsigned int framebuffer, int numAttachments, const unsigned int* attachments)
    cdef void glInvalidateNamedFramebufferSubData(unsigned int framebuffer, int numAttachments, const unsigned int* attachments, int x, int y, int width, int height)
    cdef void glInvalidateSubFramebuffer(unsigned int target, int numAttachments, const unsigned int* attachments, int x, int y, int width, int height)
    cdef void glInvalidateTexImage(unsigned int texture, int level)
    cdef void glInvalidateTexSubImage(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth)
    cdef GLboolean glIsAsyncMarkerSGIX(unsigned int marker)
    cdef GLboolean glIsBuffer(unsigned int buffer)
    cdef GLboolean glIsBufferARB(unsigned int buffer)
    cdef GLboolean glIsBufferResidentNV(unsigned int target)
    cdef GLboolean glIsCommandListNV(unsigned int list)
    cdef GLboolean glIsEnabled(unsigned int cap)
    cdef GLboolean glIsEnabledIndexedEXT(unsigned int target, unsigned int index)
    cdef GLboolean glIsEnabledi(unsigned int target, unsigned int index)
    cdef GLboolean glIsFenceAPPLE(unsigned int fence)
    cdef GLboolean glIsFenceNV(unsigned int fence)
    cdef GLboolean glIsFramebuffer(unsigned int framebuffer)
    cdef GLboolean glIsFramebufferEXT(unsigned int framebuffer)
    cdef GLboolean glIsImageHandleResidentARB(uint64_t handle)
    cdef GLboolean glIsImageHandleResidentNV(uint64_t handle)
    cdef GLboolean glIsList(unsigned int list)
    cdef GLboolean glIsNameAMD(unsigned int identifier, unsigned int name)
    cdef GLboolean glIsNamedBufferResidentNV(unsigned int buffer)
    cdef GLboolean glIsNamedStringARB(int namelen, const char* name)
    cdef GLboolean glIsObjectBufferATI(unsigned int buffer)
    cdef GLboolean glIsOcclusionQueryNV(unsigned int id)
    cdef GLboolean glIsPathNV(unsigned int path)
    cdef GLboolean glIsPointInFillPathNV(unsigned int path, unsigned int mask, float x, float y)
    cdef GLboolean glIsPointInStrokePathNV(unsigned int path, float x, float y)
    cdef GLboolean glIsProgram(unsigned int program)
    cdef GLboolean glIsProgramARB(unsigned int program)
    cdef GLboolean glIsProgramNV(unsigned int id)
    cdef GLboolean glIsProgramPipeline(unsigned int pipeline)
    cdef GLboolean glIsProgramPipelineEXT(unsigned int pipeline)
    cdef GLboolean glIsQuery(unsigned int id)
    cdef GLboolean glIsQueryARB(unsigned int id)
    cdef GLboolean glIsRenderbuffer(unsigned int renderbuffer)
    cdef GLboolean glIsRenderbufferEXT(unsigned int renderbuffer)
    cdef GLboolean glIsSampler(unsigned int sampler)
    cdef GLboolean glIsShader(unsigned int shader)
    cdef GLboolean glIsStateNV(unsigned int state)
    cdef GLboolean glIsTexture(unsigned int texture)
    cdef GLboolean glIsTextureEXT(unsigned int texture)
    cdef GLboolean glIsTextureHandleResidentARB(uint64_t handle)
    cdef GLboolean glIsTextureHandleResidentNV(uint64_t handle)
    cdef GLboolean glIsTransformFeedback(unsigned int id)
    cdef GLboolean glIsTransformFeedbackNV(unsigned int id)
    cdef GLboolean glIsVariantEnabledEXT(unsigned int id, unsigned int cap)
    cdef GLboolean glIsVertexArray(unsigned int array)
    cdef GLboolean glIsVertexArrayAPPLE(unsigned int array)
    cdef GLboolean glIsVertexAttribEnabledAPPLE(unsigned int index, unsigned int pname)
    cdef void glLabelObjectEXT(unsigned int type, unsigned int object, int length, const char* label)
    cdef void glLightEnviSGIX(unsigned int pname, int param)
    cdef void glLightModelf(unsigned int pname, float param)
    cdef void glLightModelfv(unsigned int pname, const float* params)
    cdef void glLightModeli(unsigned int pname, int param)
    cdef void glLightModeliv(unsigned int pname, const int* params)
    cdef void glLightModelxOES(unsigned int pname, GLint param)
    cdef void glLightModelxvOES(unsigned int pname, const GLint* param)
    cdef void glLightf(unsigned int light, unsigned int pname, float param)
    cdef void glLightfv(unsigned int light, unsigned int pname, const float* params)
    cdef void glLighti(unsigned int light, unsigned int pname, int param)
    cdef void glLightiv(unsigned int light, unsigned int pname, const int* params)
    cdef void glLightxOES(unsigned int light, unsigned int pname, GLint param)
    cdef void glLightxvOES(unsigned int light, unsigned int pname, const GLint* params)
    cdef void glLineStipple(int factor, unsigned short pattern)
    cdef void glLineWidth(float width)
    cdef void glLineWidthxOES(GLint width)
    cdef void glLinkProgram(unsigned int program)
    cdef void glListBase(unsigned int base)
    cdef void glListDrawCommandsStatesClientNV(unsigned int list, unsigned int segment, const void** indirects, const int* sizes, const unsigned int* states, const unsigned int* fbos, unsigned int count)
    cdef void glListParameterfSGIX(unsigned int list, unsigned int pname, float param)
    cdef void glListParameterfvSGIX(unsigned int list, unsigned int pname, const float* params)
    cdef void glListParameteriSGIX(unsigned int list, unsigned int pname, int param)
    cdef void glListParameterivSGIX(unsigned int list, unsigned int pname, const int* params)
    cdef void glLoadIdentity()
    cdef void glLoadIdentityDeformationMapSGIX(unsigned int mask)
    cdef void glLoadMatrixd(const double* m)
    cdef void glLoadMatrixf(const float* m)
    cdef void glLoadMatrixxOES(const GLint* m)
    cdef void glLoadName(unsigned int name)
    cdef void glLoadProgramNV(unsigned int target, unsigned int id, int len, const unsigned char* program)
    cdef void glLoadTransposeMatrixd(const double* m)
    cdef void glLoadTransposeMatrixdARB(const double* m)
    cdef void glLoadTransposeMatrixf(const float* m)
    cdef void glLoadTransposeMatrixfARB(const float* m)
    cdef void glLoadTransposeMatrixxOES(const GLint* m)
    cdef void glLockArraysEXT(int first, int count)
    cdef void glLogicOp(unsigned int opcode)
    cdef void glMakeBufferNonResidentNV(unsigned int target)
    cdef void glMakeBufferResidentNV(unsigned int target, unsigned int access)
    cdef void glMakeImageHandleNonResidentARB(uint64_t handle)
    cdef void glMakeImageHandleNonResidentNV(uint64_t handle)
    cdef void glMakeImageHandleResidentARB(uint64_t handle, unsigned int access)
    cdef void glMakeImageHandleResidentNV(uint64_t handle, unsigned int access)
    cdef void glMakeNamedBufferNonResidentNV(unsigned int buffer)
    cdef void glMakeNamedBufferResidentNV(unsigned int buffer, unsigned int access)
    cdef void glMakeTextureHandleNonResidentARB(uint64_t handle)
    cdef void glMakeTextureHandleNonResidentNV(uint64_t handle)
    cdef void glMakeTextureHandleResidentARB(uint64_t handle)
    cdef void glMakeTextureHandleResidentNV(uint64_t handle)
    cdef void glMap1d(unsigned int target, double u1, double u2, int stride, int order, const double* points)
    cdef void glMap1f(unsigned int target, float u1, float u2, int stride, int order, const float* points)
    cdef void glMap1xOES(unsigned int target, GLint u1, GLint u2, int stride, int order, GLint points)
    cdef void glMap2d(unsigned int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, const double* points)
    cdef void glMap2f(unsigned int target, float u1, float u2, int ustride, int uorder, float v1, float v2, int vstride, int vorder, const float* points)
    cdef void glMap2xOES(unsigned int target, GLint u1, GLint u2, int ustride, int uorder, GLint v1, GLint v2, int vstride, int vorder, GLint points)
    cdef void* glMapBuffer(unsigned int target, unsigned int access)
    cdef void* glMapBufferARB(unsigned int target, unsigned int access)
    cdef void* glMapBufferRange(unsigned int target, ptrdiff_t offset, ptrdiff_t length, unsigned int access)
    cdef void glMapControlPointsNV(unsigned int target, unsigned int index, unsigned int type, int ustride, int vstride, int uorder, int vorder, unsigned char packed, const void* points)
    cdef void glMapGrid1d(int un, double u1, double u2)
    cdef void glMapGrid1f(int un, float u1, float u2)
    cdef void glMapGrid1xOES(int n, GLint u1, GLint u2)
    cdef void glMapGrid2d(int un, double u1, double u2, int vn, double v1, double v2)
    cdef void glMapGrid2f(int un, float u1, float u2, int vn, float v1, float v2)
    cdef void glMapGrid2xOES(int n, GLint u1, GLint u2, GLint v1, GLint v2)
    cdef void* glMapNamedBuffer(unsigned int buffer, unsigned int access)
    cdef void* glMapNamedBufferEXT(unsigned int buffer, unsigned int access)
    cdef void* glMapNamedBufferRange(unsigned int buffer, ptrdiff_t offset, ptrdiff_t length, unsigned int access)
    cdef void* glMapNamedBufferRangeEXT(unsigned int buffer, ptrdiff_t offset, ptrdiff_t length, unsigned int access)
    cdef void* glMapObjectBufferATI(unsigned int buffer)
    cdef void glMapParameterfvNV(unsigned int target, unsigned int pname, const float* params)
    cdef void glMapParameterivNV(unsigned int target, unsigned int pname, const int* params)
    cdef void* glMapTexture2DINTEL(unsigned int texture, int level, unsigned int access, int* stride, unsigned int* layout)
    cdef void glMapVertexAttrib1dAPPLE(unsigned int index, unsigned int size, double u1, double u2, int stride, int order, const double* points)
    cdef void glMapVertexAttrib1fAPPLE(unsigned int index, unsigned int size, float u1, float u2, int stride, int order, const float* points)
    cdef void glMapVertexAttrib2dAPPLE(unsigned int index, unsigned int size, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, const double* points)
    cdef void glMapVertexAttrib2fAPPLE(unsigned int index, unsigned int size, float u1, float u2, int ustride, int uorder, float v1, float v2, int vstride, int vorder, const float* points)
    cdef void glMaterialf(unsigned int face, unsigned int pname, float param)
    cdef void glMaterialfv(unsigned int face, unsigned int pname, const float* params)
    cdef void glMateriali(unsigned int face, unsigned int pname, int param)
    cdef void glMaterialiv(unsigned int face, unsigned int pname, const int* params)
    cdef void glMaterialxOES(unsigned int face, unsigned int pname, GLint param)
    cdef void glMaterialxvOES(unsigned int face, unsigned int pname, const GLint* param)
    cdef void glMatrixFrustumEXT(unsigned int mode, double left, double right, double bottom, double top, double zNear, double zFar)
    cdef void glMatrixIndexPointerARB(int size, unsigned int type, int stride, const void* pointer)
    cdef void glMatrixIndexubvARB(int size, const unsigned char* indices)
    cdef void glMatrixIndexuivARB(int size, const unsigned int* indices)
    cdef void glMatrixIndexusvARB(int size, const unsigned short* indices)
    cdef void glMatrixLoad3x2fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixLoad3x3fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixLoadIdentityEXT(unsigned int mode)
    cdef void glMatrixLoadTranspose3x3fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixLoadTransposedEXT(unsigned int mode, const double* m)
    cdef void glMatrixLoadTransposefEXT(unsigned int mode, const float* m)
    cdef void glMatrixLoaddEXT(unsigned int mode, const double* m)
    cdef void glMatrixLoadfEXT(unsigned int mode, const float* m)
    cdef void glMatrixMode(unsigned int mode)
    cdef void glMatrixMult3x2fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixMult3x3fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixMultTranspose3x3fNV(unsigned int matrixMode, const float* m)
    cdef void glMatrixMultTransposedEXT(unsigned int mode, const double* m)
    cdef void glMatrixMultTransposefEXT(unsigned int mode, const float* m)
    cdef void glMatrixMultdEXT(unsigned int mode, const double* m)
    cdef void glMatrixMultfEXT(unsigned int mode, const float* m)
    cdef void glMatrixOrthoEXT(unsigned int mode, double left, double right, double bottom, double top, double zNear, double zFar)
    cdef void glMatrixPopEXT(unsigned int mode)
    cdef void glMatrixPushEXT(unsigned int mode)
    cdef void glMatrixRotatedEXT(unsigned int mode, double angle, double x, double y, double z)
    cdef void glMatrixRotatefEXT(unsigned int mode, float angle, float x, float y, float z)
    cdef void glMatrixScaledEXT(unsigned int mode, double x, double y, double z)
    cdef void glMatrixScalefEXT(unsigned int mode, float x, float y, float z)
    cdef void glMatrixTranslatedEXT(unsigned int mode, double x, double y, double z)
    cdef void glMatrixTranslatefEXT(unsigned int mode, float x, float y, float z)
    cdef void glMaxShaderCompilerThreadsARB(unsigned int count)
    cdef void glMemoryBarrier(unsigned int barriers)
    cdef void glMemoryBarrierByRegion(unsigned int barriers)
    cdef void glMemoryBarrierEXT(unsigned int barriers)
    cdef void glMinSampleShading(float value)
    cdef void glMinSampleShadingARB(float value)
    cdef void glMinmax(unsigned int target, unsigned int internalformat, unsigned char sink)
    cdef void glMinmaxEXT(unsigned int target, unsigned int internalformat, unsigned char sink)
    cdef void glMultMatrixd(const double* m)
    cdef void glMultMatrixf(const float* m)
    cdef void glMultMatrixxOES(const GLint* m)
    cdef void glMultTransposeMatrixd(const double* m)
    cdef void glMultTransposeMatrixdARB(const double* m)
    cdef void glMultTransposeMatrixf(const float* m)
    cdef void glMultTransposeMatrixfARB(const float* m)
    cdef void glMultTransposeMatrixxOES(const GLint* m)
    cdef void glMultiDrawArrays(unsigned int mode, const int* first, const int* count, int drawcount)
    cdef void glMultiDrawArraysEXT(unsigned int mode, const int* first, const int* count, int primcount)
    cdef void glMultiDrawArraysIndirect(unsigned int mode, const void* indirect, int drawcount, int stride)
    cdef void glMultiDrawArraysIndirectAMD(unsigned int mode, const void* indirect, int primcount, int stride)
    cdef void glMultiDrawArraysIndirectBindlessCountNV(unsigned int mode, const void* indirect, int drawCount, int maxDrawCount, int stride, int vertexBufferCount)
    cdef void glMultiDrawArraysIndirectBindlessNV(unsigned int mode, const void* indirect, int drawCount, int stride, int vertexBufferCount)
    cdef void glMultiDrawArraysIndirectCountARB(unsigned int mode, ptrdiff_t indirect, ptrdiff_t drawcount, int maxdrawcount, int stride)
    cdef void glMultiDrawElementArrayAPPLE(unsigned int mode, const int* first, const int* count, int primcount)
    cdef void glMultiDrawElements(unsigned int mode, const int* count, unsigned int type, const void** indices, int drawcount)
    cdef void glMultiDrawElementsBaseVertex(unsigned int mode, const int* count, unsigned int type, const void** indices, int drawcount, const int* basevertex)
    cdef void glMultiDrawElementsEXT(unsigned int mode, const int* count, unsigned int type, const void** indices, int primcount)
    cdef void glMultiDrawElementsIndirect(unsigned int mode, unsigned int type, const void* indirect, int drawcount, int stride)
    cdef void glMultiDrawElementsIndirectAMD(unsigned int mode, unsigned int type, const void* indirect, int primcount, int stride)
    cdef void glMultiDrawElementsIndirectBindlessCountNV(unsigned int mode, unsigned int type, const void* indirect, int drawCount, int maxDrawCount, int stride, int vertexBufferCount)
    cdef void glMultiDrawElementsIndirectBindlessNV(unsigned int mode, unsigned int type, const void* indirect, int drawCount, int stride, int vertexBufferCount)
    cdef void glMultiDrawElementsIndirectCountARB(unsigned int mode, unsigned int type, ptrdiff_t indirect, ptrdiff_t drawcount, int maxdrawcount, int stride)
    cdef void glMultiDrawRangeElementArrayAPPLE(unsigned int mode, unsigned int start, unsigned int end, const int* first, const int* count, int primcount)
    cdef void glMultiModeDrawArraysIBM(const unsigned int* mode, const int* first, const int* count, int primcount, int modestride)
    cdef void glMultiModeDrawElementsIBM(const unsigned int* mode, const int* count, unsigned int type, const void** indices, int primcount, int modestride)
    cdef void glMultiTexBufferEXT(unsigned int texunit, unsigned int target, unsigned int internalformat, unsigned int buffer)
    cdef void glMultiTexCoord1bOES(unsigned int texture, signed char s)
    cdef void glMultiTexCoord1bvOES(unsigned int texture, const signed char* coords)
    cdef void glMultiTexCoord1d(unsigned int target, double s)
    cdef void glMultiTexCoord1dARB(unsigned int target, double s)
    cdef void glMultiTexCoord1dv(unsigned int target, const double* v)
    cdef void glMultiTexCoord1dvARB(unsigned int target, const double* v)
    cdef void glMultiTexCoord1f(unsigned int target, float s)
    cdef void glMultiTexCoord1fARB(unsigned int target, float s)
    cdef void glMultiTexCoord1fv(unsigned int target, const float* v)
    cdef void glMultiTexCoord1fvARB(unsigned int target, const float* v)
    cdef void glMultiTexCoord1hNV(unsigned int target, unsigned short s)
    cdef void glMultiTexCoord1hvNV(unsigned int target, const unsigned short* v)
    cdef void glMultiTexCoord1i(unsigned int target, int s)
    cdef void glMultiTexCoord1iARB(unsigned int target, int s)
    cdef void glMultiTexCoord1iv(unsigned int target, const int* v)
    cdef void glMultiTexCoord1ivARB(unsigned int target, const int* v)
    cdef void glMultiTexCoord1s(unsigned int target, short s)
    cdef void glMultiTexCoord1sARB(unsigned int target, short s)
    cdef void glMultiTexCoord1sv(unsigned int target, const short* v)
    cdef void glMultiTexCoord1svARB(unsigned int target, const short* v)
    cdef void glMultiTexCoord1xOES(unsigned int texture, GLint s)
    cdef void glMultiTexCoord1xvOES(unsigned int texture, const GLint* coords)
    cdef void glMultiTexCoord2bOES(unsigned int texture, signed char s, signed char t)
    cdef void glMultiTexCoord2bvOES(unsigned int texture, const signed char* coords)
    cdef void glMultiTexCoord2d(unsigned int target, double s, double t)
    cdef void glMultiTexCoord2dARB(unsigned int target, double s, double t)
    cdef void glMultiTexCoord2dv(unsigned int target, const double* v)
    cdef void glMultiTexCoord2dvARB(unsigned int target, const double* v)
    cdef void glMultiTexCoord2f(unsigned int target, float s, float t)
    cdef void glMultiTexCoord2fARB(unsigned int target, float s, float t)
    cdef void glMultiTexCoord2fv(unsigned int target, const float* v)
    cdef void glMultiTexCoord2fvARB(unsigned int target, const float* v)
    cdef void glMultiTexCoord2hNV(unsigned int target, unsigned short s, unsigned short t)
    cdef void glMultiTexCoord2hvNV(unsigned int target, const unsigned short* v)
    cdef void glMultiTexCoord2i(unsigned int target, int s, int t)
    cdef void glMultiTexCoord2iARB(unsigned int target, int s, int t)
    cdef void glMultiTexCoord2iv(unsigned int target, const int* v)
    cdef void glMultiTexCoord2ivARB(unsigned int target, const int* v)
    cdef void glMultiTexCoord2s(unsigned int target, short s, short t)
    cdef void glMultiTexCoord2sARB(unsigned int target, short s, short t)
    cdef void glMultiTexCoord2sv(unsigned int target, const short* v)
    cdef void glMultiTexCoord2svARB(unsigned int target, const short* v)
    cdef void glMultiTexCoord2xOES(unsigned int texture, GLint s, GLint t)
    cdef void glMultiTexCoord2xvOES(unsigned int texture, const GLint* coords)
    cdef void glMultiTexCoord3bOES(unsigned int texture, signed char s, signed char t, signed char r)
    cdef void glMultiTexCoord3bvOES(unsigned int texture, const signed char* coords)
    cdef void glMultiTexCoord3d(unsigned int target, double s, double t, double r)
    cdef void glMultiTexCoord3dARB(unsigned int target, double s, double t, double r)
    cdef void glMultiTexCoord3dv(unsigned int target, const double* v)
    cdef void glMultiTexCoord3dvARB(unsigned int target, const double* v)
    cdef void glMultiTexCoord3f(unsigned int target, float s, float t, float r)
    cdef void glMultiTexCoord3fARB(unsigned int target, float s, float t, float r)
    cdef void glMultiTexCoord3fv(unsigned int target, const float* v)
    cdef void glMultiTexCoord3fvARB(unsigned int target, const float* v)
    cdef void glMultiTexCoord3hNV(unsigned int target, unsigned short s, unsigned short t, unsigned short r)
    cdef void glMultiTexCoord3hvNV(unsigned int target, const unsigned short* v)
    cdef void glMultiTexCoord3i(unsigned int target, int s, int t, int r)
    cdef void glMultiTexCoord3iARB(unsigned int target, int s, int t, int r)
    cdef void glMultiTexCoord3iv(unsigned int target, const int* v)
    cdef void glMultiTexCoord3ivARB(unsigned int target, const int* v)
    cdef void glMultiTexCoord3s(unsigned int target, short s, short t, short r)
    cdef void glMultiTexCoord3sARB(unsigned int target, short s, short t, short r)
    cdef void glMultiTexCoord3sv(unsigned int target, const short* v)
    cdef void glMultiTexCoord3svARB(unsigned int target, const short* v)
    cdef void glMultiTexCoord3xOES(unsigned int texture, GLint s, GLint t, GLint r)
    cdef void glMultiTexCoord3xvOES(unsigned int texture, const GLint* coords)
    cdef void glMultiTexCoord4bOES(unsigned int texture, signed char s, signed char t, signed char r, signed char q)
    cdef void glMultiTexCoord4bvOES(unsigned int texture, const signed char* coords)
    cdef void glMultiTexCoord4d(unsigned int target, double s, double t, double r, double q)
    cdef void glMultiTexCoord4dARB(unsigned int target, double s, double t, double r, double q)
    cdef void glMultiTexCoord4dv(unsigned int target, const double* v)
    cdef void glMultiTexCoord4dvARB(unsigned int target, const double* v)
    cdef void glMultiTexCoord4f(unsigned int target, float s, float t, float r, float q)
    cdef void glMultiTexCoord4fARB(unsigned int target, float s, float t, float r, float q)
    cdef void glMultiTexCoord4fv(unsigned int target, const float* v)
    cdef void glMultiTexCoord4fvARB(unsigned int target, const float* v)
    cdef void glMultiTexCoord4hNV(unsigned int target, unsigned short s, unsigned short t, unsigned short r, unsigned short q)
    cdef void glMultiTexCoord4hvNV(unsigned int target, const unsigned short* v)
    cdef void glMultiTexCoord4i(unsigned int target, int s, int t, int r, int q)
    cdef void glMultiTexCoord4iARB(unsigned int target, int s, int t, int r, int q)
    cdef void glMultiTexCoord4iv(unsigned int target, const int* v)
    cdef void glMultiTexCoord4ivARB(unsigned int target, const int* v)
    cdef void glMultiTexCoord4s(unsigned int target, short s, short t, short r, short q)
    cdef void glMultiTexCoord4sARB(unsigned int target, short s, short t, short r, short q)
    cdef void glMultiTexCoord4sv(unsigned int target, const short* v)
    cdef void glMultiTexCoord4svARB(unsigned int target, const short* v)
    cdef void glMultiTexCoord4xOES(unsigned int texture, GLint s, GLint t, GLint r, GLint q)
    cdef void glMultiTexCoord4xvOES(unsigned int texture, const GLint* coords)
    cdef void glMultiTexCoordP1ui(unsigned int texture, unsigned int type, unsigned int coords)
    cdef void glMultiTexCoordP1uiv(unsigned int texture, unsigned int type, const unsigned int* coords)
    cdef void glMultiTexCoordP2ui(unsigned int texture, unsigned int type, unsigned int coords)
    cdef void glMultiTexCoordP2uiv(unsigned int texture, unsigned int type, const unsigned int* coords)
    cdef void glMultiTexCoordP3ui(unsigned int texture, unsigned int type, unsigned int coords)
    cdef void glMultiTexCoordP3uiv(unsigned int texture, unsigned int type, const unsigned int* coords)
    cdef void glMultiTexCoordP4ui(unsigned int texture, unsigned int type, unsigned int coords)
    cdef void glMultiTexCoordP4uiv(unsigned int texture, unsigned int type, const unsigned int* coords)
    cdef void glMultiTexCoordPointerEXT(unsigned int texunit, int size, unsigned int type, int stride, const void* pointer)
    cdef void glMultiTexEnvfEXT(unsigned int texunit, unsigned int target, unsigned int pname, float param)
    cdef void glMultiTexEnvfvEXT(unsigned int texunit, unsigned int target, unsigned int pname, const float* params)
    cdef void glMultiTexEnviEXT(unsigned int texunit, unsigned int target, unsigned int pname, int param)
    cdef void glMultiTexEnvivEXT(unsigned int texunit, unsigned int target, unsigned int pname, const int* params)
    cdef void glMultiTexGendEXT(unsigned int texunit, unsigned int coord, unsigned int pname, double param)
    cdef void glMultiTexGendvEXT(unsigned int texunit, unsigned int coord, unsigned int pname, const double* params)
    cdef void glMultiTexGenfEXT(unsigned int texunit, unsigned int coord, unsigned int pname, float param)
    cdef void glMultiTexGenfvEXT(unsigned int texunit, unsigned int coord, unsigned int pname, const float* params)
    cdef void glMultiTexGeniEXT(unsigned int texunit, unsigned int coord, unsigned int pname, int param)
    cdef void glMultiTexGenivEXT(unsigned int texunit, unsigned int coord, unsigned int pname, const int* params)
    cdef void glMultiTexImage1DEXT(unsigned int texunit, unsigned int target, int level, int internalformat, int width, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glMultiTexImage2DEXT(unsigned int texunit, unsigned int target, int level, int internalformat, int width, int height, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glMultiTexImage3DEXT(unsigned int texunit, unsigned int target, int level, int internalformat, int width, int height, int depth, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glMultiTexParameterIivEXT(unsigned int texunit, unsigned int target, unsigned int pname, const int* params)
    cdef void glMultiTexParameterIuivEXT(unsigned int texunit, unsigned int target, unsigned int pname, const unsigned int* params)
    cdef void glMultiTexParameterfEXT(unsigned int texunit, unsigned int target, unsigned int pname, float param)
    cdef void glMultiTexParameterfvEXT(unsigned int texunit, unsigned int target, unsigned int pname, const float* params)
    cdef void glMultiTexParameteriEXT(unsigned int texunit, unsigned int target, unsigned int pname, int param)
    cdef void glMultiTexParameterivEXT(unsigned int texunit, unsigned int target, unsigned int pname, const int* params)
    cdef void glMultiTexRenderbufferEXT(unsigned int texunit, unsigned int target, unsigned int renderbuffer)
    cdef void glMultiTexSubImage1DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int width, unsigned int format, unsigned int type, const void* pixels)
    cdef void glMultiTexSubImage2DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glMultiTexSubImage3DEXT(unsigned int texunit, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* pixels)
    cdef void glNamedBufferData(unsigned int buffer, ptrdiff_t size, const void* data, unsigned int usage)
    cdef void glNamedBufferDataEXT(unsigned int buffer, ptrdiff_t size, const void* data, unsigned int usage)
    cdef void glNamedBufferPageCommitmentARB(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, unsigned char commit)
    cdef void glNamedBufferPageCommitmentEXT(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, unsigned char commit)
    cdef void glNamedBufferStorage(unsigned int buffer, ptrdiff_t size, const void* data, unsigned int flags)
    cdef void glNamedBufferStorageEXT(unsigned int buffer, ptrdiff_t size, const void* data, unsigned int flags)
    cdef void glNamedBufferSubData(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, const void* data)
    cdef void glNamedBufferSubDataEXT(unsigned int buffer, ptrdiff_t offset, ptrdiff_t size, const void* data)
    cdef void glNamedCopyBufferSubDataEXT(unsigned int readBuffer, unsigned int writeBuffer, ptrdiff_t readOffset, ptrdiff_t writeOffset, ptrdiff_t size)
    cdef void glNamedFramebufferDrawBuffer(unsigned int framebuffer, unsigned int buf)
    cdef void glNamedFramebufferDrawBuffers(unsigned int framebuffer, int n, const unsigned int* bufs)
    cdef void glNamedFramebufferParameteri(unsigned int framebuffer, unsigned int pname, int param)
    cdef void glNamedFramebufferParameteriEXT(unsigned int framebuffer, unsigned int pname, int param)
    cdef void glNamedFramebufferReadBuffer(unsigned int framebuffer, unsigned int src)
    cdef void glNamedFramebufferRenderbuffer(unsigned int framebuffer, unsigned int attachment, unsigned int renderbuffertarget, unsigned int renderbuffer)
    cdef void glNamedFramebufferRenderbufferEXT(unsigned int framebuffer, unsigned int attachment, unsigned int renderbuffertarget, unsigned int renderbuffer)
    cdef void glNamedFramebufferSampleLocationsfvARB(unsigned int framebuffer, unsigned int start, int count, const float* v)
    cdef void glNamedFramebufferSampleLocationsfvNV(unsigned int framebuffer, unsigned int start, int count, const float* v)
    cdef void glNamedFramebufferTexture(unsigned int framebuffer, unsigned int attachment, unsigned int texture, int level)
    cdef void glNamedFramebufferTexture1DEXT(unsigned int framebuffer, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glNamedFramebufferTexture2DEXT(unsigned int framebuffer, unsigned int attachment, unsigned int textarget, unsigned int texture, int level)
    cdef void glNamedFramebufferTexture3DEXT(unsigned int framebuffer, unsigned int attachment, unsigned int textarget, unsigned int texture, int level, int zoffset)
    cdef void glNamedFramebufferTextureEXT(unsigned int framebuffer, unsigned int attachment, unsigned int texture, int level)
    cdef void glNamedFramebufferTextureFaceEXT(unsigned int framebuffer, unsigned int attachment, unsigned int texture, int level, unsigned int face)
    cdef void glNamedFramebufferTextureLayer(unsigned int framebuffer, unsigned int attachment, unsigned int texture, int level, int layer)
    cdef void glNamedFramebufferTextureLayerEXT(unsigned int framebuffer, unsigned int attachment, unsigned int texture, int level, int layer)
    cdef void glNamedProgramLocalParameter4dEXT(unsigned int program, unsigned int target, unsigned int index, double x, double y, double z, double w)
    cdef void glNamedProgramLocalParameter4dvEXT(unsigned int program, unsigned int target, unsigned int index, const double* params)
    cdef void glNamedProgramLocalParameter4fEXT(unsigned int program, unsigned int target, unsigned int index, float x, float y, float z, float w)
    cdef void glNamedProgramLocalParameter4fvEXT(unsigned int program, unsigned int target, unsigned int index, const float* params)
    cdef void glNamedProgramLocalParameterI4iEXT(unsigned int program, unsigned int target, unsigned int index, int x, int y, int z, int w)
    cdef void glNamedProgramLocalParameterI4ivEXT(unsigned int program, unsigned int target, unsigned int index, const int* params)
    cdef void glNamedProgramLocalParameterI4uiEXT(unsigned int program, unsigned int target, unsigned int index, unsigned int x, unsigned int y, unsigned int z, unsigned int w)
    cdef void glNamedProgramLocalParameterI4uivEXT(unsigned int program, unsigned int target, unsigned int index, const unsigned int* params)
    cdef void glNamedProgramLocalParameters4fvEXT(unsigned int program, unsigned int target, unsigned int index, int count, const float* params)
    cdef void glNamedProgramLocalParametersI4ivEXT(unsigned int program, unsigned int target, unsigned int index, int count, const int* params)
    cdef void glNamedProgramLocalParametersI4uivEXT(unsigned int program, unsigned int target, unsigned int index, int count, const unsigned int* params)
    cdef void glNamedProgramStringEXT(unsigned int program, unsigned int target, unsigned int format, int len, const void* string)
    cdef void glNamedRenderbufferStorage(unsigned int renderbuffer, unsigned int internalformat, int width, int height)
    cdef void glNamedRenderbufferStorageEXT(unsigned int renderbuffer, unsigned int internalformat, int width, int height)
    cdef void glNamedRenderbufferStorageMultisample(unsigned int renderbuffer, int samples, unsigned int internalformat, int width, int height)
    cdef void glNamedRenderbufferStorageMultisampleCoverageEXT(unsigned int renderbuffer, int coverageSamples, int colorSamples, unsigned int internalformat, int width, int height)
    cdef void glNamedRenderbufferStorageMultisampleEXT(unsigned int renderbuffer, int samples, unsigned int internalformat, int width, int height)
    cdef void glNamedStringARB(unsigned int type, int namelen, const char* name, int stringlen, const char* string)
    cdef void glNewList(unsigned int list, unsigned int mode)
    cdef GLuint glNewObjectBufferATI(int size, const void* pointer, unsigned int usage)
    cdef void glNormal3b(signed char nx, signed char ny, signed char nz)
    cdef void glNormal3bv(const signed char* v)
    cdef void glNormal3d(double nx, double ny, double nz)
    cdef void glNormal3dv(const double* v)
    cdef void glNormal3f(float nx, float ny, float nz)
    cdef void glNormal3fVertex3fSUN(float nx, float ny, float nz, float x, float y, float z)
    cdef void glNormal3fVertex3fvSUN(const float* n, const float* v)
    cdef void glNormal3fv(const float* v)
    cdef void glNormal3hNV(unsigned short nx, unsigned short ny, unsigned short nz)
    cdef void glNormal3hvNV(const unsigned short* v)
    cdef void glNormal3i(int nx, int ny, int nz)
    cdef void glNormal3iv(const int* v)
    cdef void glNormal3s(short nx, short ny, short nz)
    cdef void glNormal3sv(const short* v)
    cdef void glNormal3xOES(GLint nx, GLint ny, GLint nz)
    cdef void glNormal3xvOES(const GLint* coords)
    cdef void glNormalFormatNV(unsigned int type, int stride)
    cdef void glNormalP3ui(unsigned int type, unsigned int coords)
    cdef void glNormalP3uiv(unsigned int type, const unsigned int* coords)
    cdef void glNormalPointer(unsigned int type, int stride, const void* pointer)
    cdef void glNormalPointerEXT(unsigned int type, int stride, int count, const void* pointer)
    cdef void glNormalPointerListIBM(unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glNormalPointervINTEL(unsigned int type, const void** pointer)
    cdef void glNormalStream3bATI(unsigned int stream, signed char nx, signed char ny, signed char nz)
    cdef void glNormalStream3bvATI(unsigned int stream, const signed char* coords)
    cdef void glNormalStream3dATI(unsigned int stream, double nx, double ny, double nz)
    cdef void glNormalStream3dvATI(unsigned int stream, const double* coords)
    cdef void glNormalStream3fATI(unsigned int stream, float nx, float ny, float nz)
    cdef void glNormalStream3fvATI(unsigned int stream, const float* coords)
    cdef void glNormalStream3iATI(unsigned int stream, int nx, int ny, int nz)
    cdef void glNormalStream3ivATI(unsigned int stream, const int* coords)
    cdef void glNormalStream3sATI(unsigned int stream, short nx, short ny, short nz)
    cdef void glNormalStream3svATI(unsigned int stream, const short* coords)
    cdef void glObjectLabel(unsigned int identifier, unsigned int name, int length, const char* label)
    cdef void glObjectLabelKHR(unsigned int identifier, unsigned int name, int length, const char* label)
    cdef void glObjectPtrLabel(const void* ptr, int length, const char* label)
    cdef void glObjectPtrLabelKHR(const void* ptr, int length, const char* label)
    cdef GLenum glObjectPurgeableAPPLE(unsigned int objectType, unsigned int name, unsigned int option)
    cdef GLenum glObjectUnpurgeableAPPLE(unsigned int objectType, unsigned int name, unsigned int option)
    cdef void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar)
    cdef void glOrthofOES(float l, float r, float b, float t, float n, float f)
    cdef void glOrthoxOES(GLint l, GLint r, GLint b, GLint t, GLint n, GLint f)
    cdef void glPNTrianglesfATI(unsigned int pname, float param)
    cdef void glPNTrianglesiATI(unsigned int pname, int param)
    cdef void glPassTexCoordATI(unsigned int dst, unsigned int coord, unsigned int swizzle)
    cdef void glPassThrough(float token)
    cdef void glPassThroughxOES(GLint token)
    cdef void glPatchParameterfv(unsigned int pname, const float* values)
    cdef void glPatchParameteri(unsigned int pname, int value)
    cdef void glPathColorGenNV(unsigned int color, unsigned int genMode, unsigned int colorFormat, const float* coeffs)
    cdef void glPathCommandsNV(unsigned int path, int numCommands, const unsigned char* commands, int numCoords, unsigned int coordType, const void* coords)
    cdef void glPathCoordsNV(unsigned int path, int numCoords, unsigned int coordType, const void* coords)
    cdef void glPathCoverDepthFuncNV(unsigned int func)
    cdef void glPathDashArrayNV(unsigned int path, int dashCount, const float* dashArray)
    cdef void glPathFogGenNV(unsigned int genMode)
    cdef GLenum glPathGlyphIndexArrayNV(unsigned int firstPathName, unsigned int fontTarget, const void* fontName, unsigned int fontStyle, unsigned int firstGlyphIndex, int numGlyphs, unsigned int pathParameterTemplate, float emScale)
    cdef GLenum glPathGlyphIndexRangeNV(unsigned int fontTarget, const void* fontName, unsigned int fontStyle, unsigned int pathParameterTemplate, float emScale, unsigned int* baseAndCount)
    cdef void glPathGlyphRangeNV(unsigned int firstPathName, unsigned int fontTarget, const void* fontName, unsigned int fontStyle, unsigned int firstGlyph, int numGlyphs, unsigned int handleMissingGlyphs, unsigned int pathParameterTemplate, float emScale)
    cdef void glPathGlyphsNV(unsigned int firstPathName, unsigned int fontTarget, const void* fontName, unsigned int fontStyle, int numGlyphs, unsigned int type, const void* charcodes, unsigned int handleMissingGlyphs, unsigned int pathParameterTemplate, float emScale)
    cdef GLenum glPathMemoryGlyphIndexArrayNV(unsigned int firstPathName, unsigned int fontTarget, ptrdiff_t fontSize, const void* fontData, int faceIndex, unsigned int firstGlyphIndex, int numGlyphs, unsigned int pathParameterTemplate, float emScale)
    cdef void glPathParameterfNV(unsigned int path, unsigned int pname, float value)
    cdef void glPathParameterfvNV(unsigned int path, unsigned int pname, const float* value)
    cdef void glPathParameteriNV(unsigned int path, unsigned int pname, int value)
    cdef void glPathParameterivNV(unsigned int path, unsigned int pname, const int* value)
    cdef void glPathStencilDepthOffsetNV(float factor, float units)
    cdef void glPathStencilFuncNV(unsigned int func, int ref, unsigned int mask)
    cdef void glPathStringNV(unsigned int path, unsigned int format, int length, const void* pathString)
    cdef void glPathSubCommandsNV(unsigned int path, int commandStart, int commandsToDelete, int numCommands, const unsigned char* commands, int numCoords, unsigned int coordType, const void* coords)
    cdef void glPathSubCoordsNV(unsigned int path, int coordStart, int numCoords, unsigned int coordType, const void* coords)
    cdef void glPathTexGenNV(unsigned int texCoordSet, unsigned int genMode, int components, const float* coeffs)
    cdef void glPauseTransformFeedback()
    cdef void glPauseTransformFeedbackNV()
    cdef void glPixelDataRangeNV(unsigned int target, int length, const void* pointer)
    cdef void glPixelMapfv(unsigned int map, int mapsize, const float* values)
    cdef void glPixelMapuiv(unsigned int map, int mapsize, const unsigned int* values)
    cdef void glPixelMapusv(unsigned int map, int mapsize, const unsigned short* values)
    cdef void glPixelMapx(unsigned int map, int size, const GLint* values)
    cdef void glPixelStoref(unsigned int pname, float param)
    cdef void glPixelStorei(unsigned int pname, int param)
    cdef void glPixelStorex(unsigned int pname, GLint param)
    cdef void glPixelTexGenParameterfSGIS(unsigned int pname, float param)
    cdef void glPixelTexGenParameterfvSGIS(unsigned int pname, const float* params)
    cdef void glPixelTexGenParameteriSGIS(unsigned int pname, int param)
    cdef void glPixelTexGenParameterivSGIS(unsigned int pname, const int* params)
    cdef void glPixelTexGenSGIX(unsigned int mode)
    cdef void glPixelTransferf(unsigned int pname, float param)
    cdef void glPixelTransferi(unsigned int pname, int param)
    cdef void glPixelTransferxOES(unsigned int pname, GLint param)
    cdef void glPixelTransformParameterfEXT(unsigned int target, unsigned int pname, float param)
    cdef void glPixelTransformParameterfvEXT(unsigned int target, unsigned int pname, const float* params)
    cdef void glPixelTransformParameteriEXT(unsigned int target, unsigned int pname, int param)
    cdef void glPixelTransformParameterivEXT(unsigned int target, unsigned int pname, const int* params)
    cdef void glPixelZoom(float xfactor, float yfactor)
    cdef void glPixelZoomxOES(GLint xfactor, GLint yfactor)
    cdef GLboolean glPointAlongPathNV(unsigned int path, int startSegment, int numSegments, float distance, float* x, float* y, float* tangentX, float* tangentY)
    cdef void glPointParameterf(unsigned int pname, float param)
    cdef void glPointParameterfARB(unsigned int pname, float param)
    cdef void glPointParameterfEXT(unsigned int pname, float param)
    cdef void glPointParameterfSGIS(unsigned int pname, float param)
    cdef void glPointParameterfv(unsigned int pname, const float* params)
    cdef void glPointParameterfvARB(unsigned int pname, const float* params)
    cdef void glPointParameterfvEXT(unsigned int pname, const float* params)
    cdef void glPointParameterfvSGIS(unsigned int pname, const float* params)
    cdef void glPointParameteri(unsigned int pname, int param)
    cdef void glPointParameteriNV(unsigned int pname, int param)
    cdef void glPointParameteriv(unsigned int pname, const int* params)
    cdef void glPointParameterivNV(unsigned int pname, const int* params)
    cdef void glPointParameterxOES(unsigned int pname, GLint param)
    cdef void glPointParameterxvOES(unsigned int pname, const GLint* params)
    cdef void glPointSize(float size)
    cdef void glPointSizexOES(GLint size)
    cdef GLint glPollAsyncSGIX(unsigned int* markerp)
    cdef GLint glPollInstrumentsSGIX(int* marker_p)
    cdef void glPolygonMode(unsigned int face, unsigned int mode)
    cdef void glPolygonOffset(float factor, float units)
    cdef void glPolygonOffsetClampEXT(float factor, float units, float clamp)
    cdef void glPolygonOffsetEXT(float factor, float bias)
    cdef void glPolygonOffsetxOES(GLint factor, GLint units)
    cdef void glPolygonStipple(const unsigned char* mask)
    cdef void glPopAttrib()
    cdef void glPopClientAttrib()
    cdef void glPopDebugGroup()
    cdef void glPopDebugGroupKHR()
    cdef void glPopGroupMarkerEXT()
    cdef void glPopMatrix()
    cdef void glPopName()
    cdef void glPresentFrameDualFillNV(unsigned int video_slot, uint64_t minPresentTime, unsigned int beginPresentTimeId, unsigned int presentDurationId, unsigned int type, unsigned int target0, unsigned int fill0, unsigned int target1, unsigned int fill1, unsigned int target2, unsigned int fill2, unsigned int target3, unsigned int fill3)
    cdef void glPresentFrameKeyedNV(unsigned int video_slot, uint64_t minPresentTime, unsigned int beginPresentTimeId, unsigned int presentDurationId, unsigned int type, unsigned int target0, unsigned int fill0, unsigned int key0, unsigned int target1, unsigned int fill1, unsigned int key1)
    cdef void glPrimitiveBoundingBoxARB(float minX, float minY, float minZ, float minW, float maxX, float maxY, float maxZ, float maxW)
    cdef void glPrimitiveRestartIndex(unsigned int index)
    cdef void glPrimitiveRestartIndexNV(unsigned int index)
    cdef void glPrimitiveRestartNV()
    cdef void glPrioritizeTextures(int n, const unsigned int* textures, const float* priorities)
    cdef void glPrioritizeTexturesEXT(int n, const unsigned int* textures, const float* priorities)
    cdef void glPrioritizeTexturesxOES(int n, const unsigned int* textures, const GLint* priorities)
    cdef void glProgramBinary(unsigned int program, unsigned int binaryFormat, const void* binary, int length)
    cdef void glProgramBufferParametersIivNV(unsigned int target, unsigned int bindingIndex, unsigned int wordIndex, int count, const int* params)
    cdef void glProgramBufferParametersIuivNV(unsigned int target, unsigned int bindingIndex, unsigned int wordIndex, int count, const unsigned int* params)
    cdef void glProgramBufferParametersfvNV(unsigned int target, unsigned int bindingIndex, unsigned int wordIndex, int count, const float* params)
    cdef void glProgramEnvParameter4dARB(unsigned int target, unsigned int index, double x, double y, double z, double w)
    cdef void glProgramEnvParameter4dvARB(unsigned int target, unsigned int index, const double* params)
    cdef void glProgramEnvParameter4fARB(unsigned int target, unsigned int index, float x, float y, float z, float w)
    cdef void glProgramEnvParameter4fvARB(unsigned int target, unsigned int index, const float* params)
    cdef void glProgramEnvParameterI4iNV(unsigned int target, unsigned int index, int x, int y, int z, int w)
    cdef void glProgramEnvParameterI4ivNV(unsigned int target, unsigned int index, const int* params)
    cdef void glProgramEnvParameterI4uiNV(unsigned int target, unsigned int index, unsigned int x, unsigned int y, unsigned int z, unsigned int w)
    cdef void glProgramEnvParameterI4uivNV(unsigned int target, unsigned int index, const unsigned int* params)
    cdef void glProgramEnvParameters4fvEXT(unsigned int target, unsigned int index, int count, const float* params)
    cdef void glProgramEnvParametersI4ivNV(unsigned int target, unsigned int index, int count, const int* params)
    cdef void glProgramEnvParametersI4uivNV(unsigned int target, unsigned int index, int count, const unsigned int* params)
    cdef void glProgramLocalParameter4dARB(unsigned int target, unsigned int index, double x, double y, double z, double w)
    cdef void glProgramLocalParameter4dvARB(unsigned int target, unsigned int index, const double* params)
    cdef void glProgramLocalParameter4fARB(unsigned int target, unsigned int index, float x, float y, float z, float w)
    cdef void glProgramLocalParameter4fvARB(unsigned int target, unsigned int index, const float* params)
    cdef void glProgramLocalParameterI4iNV(unsigned int target, unsigned int index, int x, int y, int z, int w)
    cdef void glProgramLocalParameterI4ivNV(unsigned int target, unsigned int index, const int* params)
    cdef void glProgramLocalParameterI4uiNV(unsigned int target, unsigned int index, unsigned int x, unsigned int y, unsigned int z, unsigned int w)
    cdef void glProgramLocalParameterI4uivNV(unsigned int target, unsigned int index, const unsigned int* params)
    cdef void glProgramLocalParameters4fvEXT(unsigned int target, unsigned int index, int count, const float* params)
    cdef void glProgramLocalParametersI4ivNV(unsigned int target, unsigned int index, int count, const int* params)
    cdef void glProgramLocalParametersI4uivNV(unsigned int target, unsigned int index, int count, const unsigned int* params)
    cdef void glProgramNamedParameter4dNV(unsigned int id, int len, const unsigned char* name, double x, double y, double z, double w)
    cdef void glProgramNamedParameter4dvNV(unsigned int id, int len, const unsigned char* name, const double* v)
    cdef void glProgramNamedParameter4fNV(unsigned int id, int len, const unsigned char* name, float x, float y, float z, float w)
    cdef void glProgramNamedParameter4fvNV(unsigned int id, int len, const unsigned char* name, const float* v)
    cdef void glProgramParameter4dNV(unsigned int target, unsigned int index, double x, double y, double z, double w)
    cdef void glProgramParameter4dvNV(unsigned int target, unsigned int index, const double* v)
    cdef void glProgramParameter4fNV(unsigned int target, unsigned int index, float x, float y, float z, float w)
    cdef void glProgramParameter4fvNV(unsigned int target, unsigned int index, const float* v)
    cdef void glProgramParameteri(unsigned int program, unsigned int pname, int value)
    cdef void glProgramParameteriARB(unsigned int program, unsigned int pname, int value)
    cdef void glProgramParameteriEXT(unsigned int program, unsigned int pname, int value)
    cdef void glProgramParameters4dvNV(unsigned int target, unsigned int index, int count, const double* v)
    cdef void glProgramParameters4fvNV(unsigned int target, unsigned int index, int count, const float* v)
    cdef void glProgramPathFragmentInputGenNV(unsigned int program, int location, unsigned int genMode, int components, const float* coeffs)
    cdef void glProgramStringARB(unsigned int target, unsigned int format, int len, const void* string)
    cdef void glProgramSubroutineParametersuivNV(unsigned int target, int count, const unsigned int* params)
    cdef void glProgramUniform1d(unsigned int program, int location, double v0)
    cdef void glProgramUniform1dEXT(unsigned int program, int location, double x)
    cdef void glProgramUniform1dv(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform1dvEXT(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform1f(unsigned int program, int location, float v0)
    cdef void glProgramUniform1fEXT(unsigned int program, int location, float v0)
    cdef void glProgramUniform1fv(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform1fvEXT(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform1i(unsigned int program, int location, int v0)
    cdef void glProgramUniform1i64ARB(unsigned int program, int location, int64_t x)
    cdef void glProgramUniform1i64NV(unsigned int program, int location, int64_t x)
    cdef void glProgramUniform1i64vARB(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform1i64vNV(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform1iEXT(unsigned int program, int location, int v0)
    cdef void glProgramUniform1iv(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform1ivEXT(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform1ui(unsigned int program, int location, unsigned int v0)
    cdef void glProgramUniform1ui64ARB(unsigned int program, int location, uint64_t x)
    cdef void glProgramUniform1ui64NV(unsigned int program, int location, uint64_t x)
    cdef void glProgramUniform1ui64vARB(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform1ui64vNV(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform1uiEXT(unsigned int program, int location, unsigned int v0)
    cdef void glProgramUniform1uiv(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform1uivEXT(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform2d(unsigned int program, int location, double v0, double v1)
    cdef void glProgramUniform2dEXT(unsigned int program, int location, double x, double y)
    cdef void glProgramUniform2dv(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform2dvEXT(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform2f(unsigned int program, int location, float v0, float v1)
    cdef void glProgramUniform2fEXT(unsigned int program, int location, float v0, float v1)
    cdef void glProgramUniform2fv(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform2fvEXT(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform2i(unsigned int program, int location, int v0, int v1)
    cdef void glProgramUniform2i64ARB(unsigned int program, int location, int64_t x, int64_t y)
    cdef void glProgramUniform2i64NV(unsigned int program, int location, int64_t x, int64_t y)
    cdef void glProgramUniform2i64vARB(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform2i64vNV(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform2iEXT(unsigned int program, int location, int v0, int v1)
    cdef void glProgramUniform2iv(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform2ivEXT(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform2ui(unsigned int program, int location, unsigned int v0, unsigned int v1)
    cdef void glProgramUniform2ui64ARB(unsigned int program, int location, uint64_t x, uint64_t y)
    cdef void glProgramUniform2ui64NV(unsigned int program, int location, uint64_t x, uint64_t y)
    cdef void glProgramUniform2ui64vARB(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform2ui64vNV(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform2uiEXT(unsigned int program, int location, unsigned int v0, unsigned int v1)
    cdef void glProgramUniform2uiv(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform2uivEXT(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform3d(unsigned int program, int location, double v0, double v1, double v2)
    cdef void glProgramUniform3dEXT(unsigned int program, int location, double x, double y, double z)
    cdef void glProgramUniform3dv(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform3dvEXT(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform3f(unsigned int program, int location, float v0, float v1, float v2)
    cdef void glProgramUniform3fEXT(unsigned int program, int location, float v0, float v1, float v2)
    cdef void glProgramUniform3fv(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform3fvEXT(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform3i(unsigned int program, int location, int v0, int v1, int v2)
    cdef void glProgramUniform3i64ARB(unsigned int program, int location, int64_t x, int64_t y, int64_t z)
    cdef void glProgramUniform3i64NV(unsigned int program, int location, int64_t x, int64_t y, int64_t z)
    cdef void glProgramUniform3i64vARB(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform3i64vNV(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform3iEXT(unsigned int program, int location, int v0, int v1, int v2)
    cdef void glProgramUniform3iv(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform3ivEXT(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform3ui(unsigned int program, int location, unsigned int v0, unsigned int v1, unsigned int v2)
    cdef void glProgramUniform3ui64ARB(unsigned int program, int location, uint64_t x, uint64_t y, uint64_t z)
    cdef void glProgramUniform3ui64NV(unsigned int program, int location, uint64_t x, uint64_t y, uint64_t z)
    cdef void glProgramUniform3ui64vARB(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform3ui64vNV(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform3uiEXT(unsigned int program, int location, unsigned int v0, unsigned int v1, unsigned int v2)
    cdef void glProgramUniform3uiv(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform3uivEXT(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform4d(unsigned int program, int location, double v0, double v1, double v2, double v3)
    cdef void glProgramUniform4dEXT(unsigned int program, int location, double x, double y, double z, double w)
    cdef void glProgramUniform4dv(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform4dvEXT(unsigned int program, int location, int count, const double* value)
    cdef void glProgramUniform4f(unsigned int program, int location, float v0, float v1, float v2, float v3)
    cdef void glProgramUniform4fEXT(unsigned int program, int location, float v0, float v1, float v2, float v3)
    cdef void glProgramUniform4fv(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform4fvEXT(unsigned int program, int location, int count, const float* value)
    cdef void glProgramUniform4i(unsigned int program, int location, int v0, int v1, int v2, int v3)
    cdef void glProgramUniform4i64ARB(unsigned int program, int location, int64_t x, int64_t y, int64_t z, int64_t w)
    cdef void glProgramUniform4i64NV(unsigned int program, int location, int64_t x, int64_t y, int64_t z, int64_t w)
    cdef void glProgramUniform4i64vARB(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform4i64vNV(unsigned int program, int location, int count, const int64_t* value)
    cdef void glProgramUniform4iEXT(unsigned int program, int location, int v0, int v1, int v2, int v3)
    cdef void glProgramUniform4iv(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform4ivEXT(unsigned int program, int location, int count, const int* value)
    cdef void glProgramUniform4ui(unsigned int program, int location, unsigned int v0, unsigned int v1, unsigned int v2, unsigned int v3)
    cdef void glProgramUniform4ui64ARB(unsigned int program, int location, uint64_t x, uint64_t y, uint64_t z, uint64_t w)
    cdef void glProgramUniform4ui64NV(unsigned int program, int location, uint64_t x, uint64_t y, uint64_t z, uint64_t w)
    cdef void glProgramUniform4ui64vARB(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform4ui64vNV(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramUniform4uiEXT(unsigned int program, int location, unsigned int v0, unsigned int v1, unsigned int v2, unsigned int v3)
    cdef void glProgramUniform4uiv(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniform4uivEXT(unsigned int program, int location, int count, const unsigned int* value)
    cdef void glProgramUniformHandleui64ARB(unsigned int program, int location, uint64_t value)
    cdef void glProgramUniformHandleui64NV(unsigned int program, int location, uint64_t value)
    cdef void glProgramUniformHandleui64vARB(unsigned int program, int location, int count, const uint64_t* values)
    cdef void glProgramUniformHandleui64vNV(unsigned int program, int location, int count, const uint64_t* values)
    cdef void glProgramUniformMatrix2dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix2fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix2x3dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2x3dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2x3fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix2x3fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix2x4dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2x4dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix2x4fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix2x4fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3x2dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3x2dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3x2fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3x2fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3x4dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3x4dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix3x4fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix3x4fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4x2dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4x2dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4x2fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4x2fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4x3dv(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4x3dvEXT(unsigned int program, int location, int count, unsigned char transpose, const double* value)
    cdef void glProgramUniformMatrix4x3fv(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformMatrix4x3fvEXT(unsigned int program, int location, int count, unsigned char transpose, const float* value)
    cdef void glProgramUniformui64NV(unsigned int program, int location, uint64_t value)
    cdef void glProgramUniformui64vNV(unsigned int program, int location, int count, const uint64_t* value)
    cdef void glProgramVertexLimitNV(unsigned int target, int limit)
    cdef void glProvokingVertex(unsigned int mode)
    cdef void glProvokingVertexEXT(unsigned int mode)
    cdef void glPushAttrib(unsigned int mask)
    cdef void glPushClientAttrib(unsigned int mask)
    cdef void glPushClientAttribDefaultEXT(unsigned int mask)
    cdef void glPushDebugGroup(unsigned int source, unsigned int id, int length, const char* message)
    cdef void glPushDebugGroupKHR(unsigned int source, unsigned int id, int length, const char* message)
    cdef void glPushGroupMarkerEXT(int length, const char* marker)
    cdef void glPushMatrix()
    cdef void glPushName(unsigned int name)
    cdef void glQueryCounter(unsigned int id, unsigned int target)
    cdef GLbitfield glQueryMatrixxOES(GLint* mantissa, int* exponent)
    cdef void glQueryObjectParameteruiAMD(unsigned int target, unsigned int id, unsigned int pname, unsigned int param)
    cdef void glRasterPos2d(double x, double y)
    cdef void glRasterPos2dv(const double* v)
    cdef void glRasterPos2f(float x, float y)
    cdef void glRasterPos2fv(const float* v)
    cdef void glRasterPos2i(int x, int y)
    cdef void glRasterPos2iv(const int* v)
    cdef void glRasterPos2s(short x, short y)
    cdef void glRasterPos2sv(const short* v)
    cdef void glRasterPos2xOES(GLint x, GLint y)
    cdef void glRasterPos2xvOES(const GLint* coords)
    cdef void glRasterPos3d(double x, double y, double z)
    cdef void glRasterPos3dv(const double* v)
    cdef void glRasterPos3f(float x, float y, float z)
    cdef void glRasterPos3fv(const float* v)
    cdef void glRasterPos3i(int x, int y, int z)
    cdef void glRasterPos3iv(const int* v)
    cdef void glRasterPos3s(short x, short y, short z)
    cdef void glRasterPos3sv(const short* v)
    cdef void glRasterPos3xOES(GLint x, GLint y, GLint z)
    cdef void glRasterPos3xvOES(const GLint* coords)
    cdef void glRasterPos4d(double x, double y, double z, double w)
    cdef void glRasterPos4dv(const double* v)
    cdef void glRasterPos4f(float x, float y, float z, float w)
    cdef void glRasterPos4fv(const float* v)
    cdef void glRasterPos4i(int x, int y, int z, int w)
    cdef void glRasterPos4iv(const int* v)
    cdef void glRasterPos4s(short x, short y, short z, short w)
    cdef void glRasterPos4sv(const short* v)
    cdef void glRasterPos4xOES(GLint x, GLint y, GLint z, GLint w)
    cdef void glRasterPos4xvOES(const GLint* coords)
    cdef void glRasterSamplesEXT(unsigned int samples, unsigned char fixedsamplelocations)
    cdef void glReadBuffer(unsigned int src)
    cdef void glReadInstrumentsSGIX(int marker)
    cdef void glReadPixels(int x, int y, int width, int height, unsigned int format, unsigned int type, void* pixels)
    cdef void glReadnPixels(int x, int y, int width, int height, unsigned int format, unsigned int type, int bufSize, void* data)
    cdef void glReadnPixelsARB(int x, int y, int width, int height, unsigned int format, unsigned int type, int bufSize, void* data)
    cdef void glReadnPixelsKHR(int x, int y, int width, int height, unsigned int format, unsigned int type, int bufSize, void* data)
    cdef void glRectd(double x1, double y1, double x2, double y2)
    cdef void glRectdv(const double* v1, const double* v2)
    cdef void glRectf(float x1, float y1, float x2, float y2)
    cdef void glRectfv(const float* v1, const float* v2)
    cdef void glRecti(int x1, int y1, int x2, int y2)
    cdef void glRectiv(const int* v1, const int* v2)
    cdef void glRects(short x1, short y1, short x2, short y2)
    cdef void glRectsv(const short* v1, const short* v2)
    cdef void glRectxOES(GLint x1, GLint y1, GLint x2, GLint y2)
    cdef void glRectxvOES(const GLint* v1, const GLint* v2)
    cdef void glReferencePlaneSGIX(const double* equation)
    cdef void glReleaseShaderCompiler()
    cdef GLint glRenderMode(unsigned int mode)
    cdef void glRenderbufferStorage(unsigned int target, unsigned int internalformat, int width, int height)
    cdef void glRenderbufferStorageEXT(unsigned int target, unsigned int internalformat, int width, int height)
    cdef void glRenderbufferStorageMultisample(unsigned int target, int samples, unsigned int internalformat, int width, int height)
    cdef void glRenderbufferStorageMultisampleCoverageNV(unsigned int target, int coverageSamples, int colorSamples, unsigned int internalformat, int width, int height)
    cdef void glRenderbufferStorageMultisampleEXT(unsigned int target, int samples, unsigned int internalformat, int width, int height)
    cdef void glReplacementCodePointerSUN(unsigned int type, int stride, const void** pointer)
    cdef void glReplacementCodeubSUN(unsigned char code)
    cdef void glReplacementCodeubvSUN(const unsigned char* code)
    cdef void glReplacementCodeuiColor3fVertex3fSUN(unsigned int rc, float r, float g, float b, float x, float y, float z)
    cdef void glReplacementCodeuiColor3fVertex3fvSUN(const unsigned int* rc, const float* c, const float* v)
    cdef void glReplacementCodeuiColor4fNormal3fVertex3fSUN(unsigned int rc, float r, float g, float b, float a, float nx, float ny, float nz, float x, float y, float z)
    cdef void glReplacementCodeuiColor4fNormal3fVertex3fvSUN(const unsigned int* rc, const float* c, const float* n, const float* v)
    cdef void glReplacementCodeuiColor4ubVertex3fSUN(unsigned int rc, unsigned char r, unsigned char g, unsigned char b, unsigned char a, float x, float y, float z)
    cdef void glReplacementCodeuiColor4ubVertex3fvSUN(const unsigned int* rc, const unsigned char* c, const float* v)
    cdef void glReplacementCodeuiNormal3fVertex3fSUN(unsigned int rc, float nx, float ny, float nz, float x, float y, float z)
    cdef void glReplacementCodeuiNormal3fVertex3fvSUN(const unsigned int* rc, const float* n, const float* v)
    cdef void glReplacementCodeuiSUN(unsigned int code)
    cdef void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(unsigned int rc, float s, float t, float r, float g, float b, float a, float nx, float ny, float nz, float x, float y, float z)
    cdef void glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(const unsigned int* rc, const float* tc, const float* c, const float* n, const float* v)
    cdef void glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN(unsigned int rc, float s, float t, float nx, float ny, float nz, float x, float y, float z)
    cdef void glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN(const unsigned int* rc, const float* tc, const float* n, const float* v)
    cdef void glReplacementCodeuiTexCoord2fVertex3fSUN(unsigned int rc, float s, float t, float x, float y, float z)
    cdef void glReplacementCodeuiTexCoord2fVertex3fvSUN(const unsigned int* rc, const float* tc, const float* v)
    cdef void glReplacementCodeuiVertex3fSUN(unsigned int rc, float x, float y, float z)
    cdef void glReplacementCodeuiVertex3fvSUN(const unsigned int* rc, const float* v)
    cdef void glReplacementCodeuivSUN(const unsigned int* code)
    cdef void glReplacementCodeusSUN(unsigned short code)
    cdef void glReplacementCodeusvSUN(const unsigned short* code)
    cdef void glRequestResidentProgramsNV(int n, const unsigned int* programs)
    cdef void glResetHistogram(unsigned int target)
    cdef void glResetHistogramEXT(unsigned int target)
    cdef void glResetMinmax(unsigned int target)
    cdef void glResetMinmaxEXT(unsigned int target)
    cdef void glResizeBuffersMESA()
    cdef void glResolveDepthValuesNV()
    cdef void glResumeTransformFeedback()
    cdef void glResumeTransformFeedbackNV()
    cdef void glRotated(double angle, double x, double y, double z)
    cdef void glRotatef(float angle, float x, float y, float z)
    cdef void glRotatexOES(GLint angle, GLint x, GLint y, GLint z)
    cdef void glSampleCoverage(float value, unsigned char invert)
    cdef void glSampleCoverageARB(float value, unsigned char invert)
    cdef void glSampleCoveragexOES(int value, unsigned char invert)
    cdef void glSampleMapATI(unsigned int dst, unsigned int interp, unsigned int swizzle)
    cdef void glSampleMaskEXT(float value, unsigned char invert)
    cdef void glSampleMaskIndexedNV(unsigned int index, unsigned int mask)
    cdef void glSampleMaskSGIS(float value, unsigned char invert)
    cdef void glSampleMaski(unsigned int maskNumber, unsigned int mask)
    cdef void glSamplePatternEXT(unsigned int pattern)
    cdef void glSamplePatternSGIS(unsigned int pattern)
    cdef void glSamplerParameterIiv(unsigned int sampler, unsigned int pname, const int* param)
    cdef void glSamplerParameterIuiv(unsigned int sampler, unsigned int pname, const unsigned int* param)
    cdef void glSamplerParameterf(unsigned int sampler, unsigned int pname, float param)
    cdef void glSamplerParameterfv(unsigned int sampler, unsigned int pname, const float* param)
    cdef void glSamplerParameteri(unsigned int sampler, unsigned int pname, int param)
    cdef void glSamplerParameteriv(unsigned int sampler, unsigned int pname, const int* param)
    cdef void glScaled(double x, double y, double z)
    cdef void glScalef(float x, float y, float z)
    cdef void glScalexOES(GLint x, GLint y, GLint z)
    cdef void glScissor(int x, int y, int width, int height)
    cdef void glScissorArrayv(unsigned int first, int count, const int* v)
    cdef void glScissorIndexed(unsigned int index, int left, int bottom, int width, int height)
    cdef void glScissorIndexedv(unsigned int index, const int* v)
    cdef void glSecondaryColor3b(signed char red, signed char green, signed char blue)
    cdef void glSecondaryColor3bEXT(signed char red, signed char green, signed char blue)
    cdef void glSecondaryColor3bv(const signed char* v)
    cdef void glSecondaryColor3bvEXT(const signed char* v)
    cdef void glSecondaryColor3d(double red, double green, double blue)
    cdef void glSecondaryColor3dEXT(double red, double green, double blue)
    cdef void glSecondaryColor3dv(const double* v)
    cdef void glSecondaryColor3dvEXT(const double* v)
    cdef void glSecondaryColor3f(float red, float green, float blue)
    cdef void glSecondaryColor3fEXT(float red, float green, float blue)
    cdef void glSecondaryColor3fv(const float* v)
    cdef void glSecondaryColor3fvEXT(const float* v)
    cdef void glSecondaryColor3hNV(unsigned short red, unsigned short green, unsigned short blue)
    cdef void glSecondaryColor3hvNV(const unsigned short* v)
    cdef void glSecondaryColor3i(int red, int green, int blue)
    cdef void glSecondaryColor3iEXT(int red, int green, int blue)
    cdef void glSecondaryColor3iv(const int* v)
    cdef void glSecondaryColor3ivEXT(const int* v)
    cdef void glSecondaryColor3s(short red, short green, short blue)
    cdef void glSecondaryColor3sEXT(short red, short green, short blue)
    cdef void glSecondaryColor3sv(const short* v)
    cdef void glSecondaryColor3svEXT(const short* v)
    cdef void glSecondaryColor3ub(unsigned char red, unsigned char green, unsigned char blue)
    cdef void glSecondaryColor3ubEXT(unsigned char red, unsigned char green, unsigned char blue)
    cdef void glSecondaryColor3ubv(const unsigned char* v)
    cdef void glSecondaryColor3ubvEXT(const unsigned char* v)
    cdef void glSecondaryColor3ui(unsigned int red, unsigned int green, unsigned int blue)
    cdef void glSecondaryColor3uiEXT(unsigned int red, unsigned int green, unsigned int blue)
    cdef void glSecondaryColor3uiv(const unsigned int* v)
    cdef void glSecondaryColor3uivEXT(const unsigned int* v)
    cdef void glSecondaryColor3us(unsigned short red, unsigned short green, unsigned short blue)
    cdef void glSecondaryColor3usEXT(unsigned short red, unsigned short green, unsigned short blue)
    cdef void glSecondaryColor3usv(const unsigned short* v)
    cdef void glSecondaryColor3usvEXT(const unsigned short* v)
    cdef void glSecondaryColorFormatNV(int size, unsigned int type, int stride)
    cdef void glSecondaryColorP3ui(unsigned int type, unsigned int color)
    cdef void glSecondaryColorP3uiv(unsigned int type, const unsigned int* color)
    cdef void glSecondaryColorPointer(int size, unsigned int type, int stride, const void* pointer)
    cdef void glSecondaryColorPointerEXT(int size, unsigned int type, int stride, const void* pointer)
    cdef void glSecondaryColorPointerListIBM(int size, unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glSelectBuffer(int size, unsigned int* buffer)
    cdef void glSelectPerfMonitorCountersAMD(unsigned int monitor, unsigned char enable, unsigned int group, int numCounters, unsigned int* counterList)
    cdef void glSeparableFilter2D(unsigned int target, unsigned int internalformat, int width, int height, unsigned int format, unsigned int type, const void* row, const void* column)
    cdef void glSeparableFilter2DEXT(unsigned int target, unsigned int internalformat, int width, int height, unsigned int format, unsigned int type, const void* row, const void* column)
    cdef void glSetFenceAPPLE(unsigned int fence)
    cdef void glSetFenceNV(unsigned int fence, unsigned int condition)
    cdef void glSetFragmentShaderConstantATI(unsigned int dst, const float* value)
    cdef void glSetInvariantEXT(unsigned int id, unsigned int type, const void* addr)
    cdef void glSetLocalConstantEXT(unsigned int id, unsigned int type, const void* addr)
    cdef void glSetMultisamplefvAMD(unsigned int pname, unsigned int index, const float* val)
    cdef void glShadeModel(unsigned int mode)
    cdef void glShaderBinary(int count, const unsigned int* shaders, unsigned int binaryformat, const void* binary, int length)
    cdef void glShaderOp1EXT(unsigned int op, unsigned int res, unsigned int arg1)
    cdef void glShaderOp2EXT(unsigned int op, unsigned int res, unsigned int arg1, unsigned int arg2)
    cdef void glShaderOp3EXT(unsigned int op, unsigned int res, unsigned int arg1, unsigned int arg2, unsigned int arg3)
    cdef void glShaderSource(unsigned int shader, int count, const char** string, const int* length)
    cdef void glShaderStorageBlockBinding(unsigned int program, unsigned int storageBlockIndex, unsigned int storageBlockBinding)
    cdef void glSharpenTexFuncSGIS(unsigned int target, int n, const float* points)
    cdef void glSpriteParameterfSGIX(unsigned int pname, float param)
    cdef void glSpriteParameterfvSGIX(unsigned int pname, const float* params)
    cdef void glSpriteParameteriSGIX(unsigned int pname, int param)
    cdef void glSpriteParameterivSGIX(unsigned int pname, const int* params)
    cdef void glStartInstrumentsSGIX()
    cdef void glStateCaptureNV(unsigned int state, unsigned int mode)
    cdef void glStencilClearTagEXT(int stencilTagBits, unsigned int stencilClearTag)
    cdef void glStencilFillPathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, unsigned int fillMode, unsigned int mask, unsigned int transformType, const float* transformValues)
    cdef void glStencilFillPathNV(unsigned int path, unsigned int fillMode, unsigned int mask)
    cdef void glStencilFunc(unsigned int func, int ref, unsigned int mask)
    cdef void glStencilFuncSeparate(unsigned int face, unsigned int func, int ref, unsigned int mask)
    cdef void glStencilFuncSeparateATI(unsigned int frontfunc, unsigned int backfunc, int ref, unsigned int mask)
    cdef void glStencilMask(unsigned int mask)
    cdef void glStencilMaskSeparate(unsigned int face, unsigned int mask)
    cdef void glStencilOp(unsigned int fail, unsigned int zfail, unsigned int zpass)
    cdef void glStencilOpSeparate(unsigned int face, unsigned int sfail, unsigned int dpfail, unsigned int dppass)
    cdef void glStencilOpSeparateATI(unsigned int face, unsigned int sfail, unsigned int dpfail, unsigned int dppass)
    cdef void glStencilOpValueAMD(unsigned int face, unsigned int value)
    cdef void glStencilStrokePathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, int reference, unsigned int mask, unsigned int transformType, const float* transformValues)
    cdef void glStencilStrokePathNV(unsigned int path, int reference, unsigned int mask)
    cdef void glStencilThenCoverFillPathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, unsigned int fillMode, unsigned int mask, unsigned int coverMode, unsigned int transformType, const float* transformValues)
    cdef void glStencilThenCoverFillPathNV(unsigned int path, unsigned int fillMode, unsigned int mask, unsigned int coverMode)
    cdef void glStencilThenCoverStrokePathInstancedNV(int numPaths, unsigned int pathNameType, const void* paths, unsigned int pathBase, int reference, unsigned int mask, unsigned int coverMode, unsigned int transformType, const float* transformValues)
    cdef void glStencilThenCoverStrokePathNV(unsigned int path, int reference, unsigned int mask, unsigned int coverMode)
    cdef void glStopInstrumentsSGIX(int marker)
    cdef void glStringMarkerGREMEDY(int len, const void* string)
    cdef void glSubpixelPrecisionBiasNV(unsigned int xbits, unsigned int ybits)
    cdef void glSwizzleEXT(unsigned int res, unsigned int _in_, unsigned int outX, unsigned int outY, unsigned int outZ, unsigned int outW)
    cdef void glSyncTextureINTEL(unsigned int texture)
    cdef void glTagSampleBufferSGIX()
    cdef void glTangent3bEXT(signed char tx, signed char ty, signed char tz)
    cdef void glTangent3bvEXT(const signed char* v)
    cdef void glTangent3dEXT(double tx, double ty, double tz)
    cdef void glTangent3dvEXT(const double* v)
    cdef void glTangent3fEXT(float tx, float ty, float tz)
    cdef void glTangent3fvEXT(const float* v)
    cdef void glTangent3iEXT(int tx, int ty, int tz)
    cdef void glTangent3ivEXT(const int* v)
    cdef void glTangent3sEXT(short tx, short ty, short tz)
    cdef void glTangent3svEXT(const short* v)
    cdef void glTangentPointerEXT(unsigned int type, int stride, const void* pointer)
    cdef void glTbufferMask3DFX(unsigned int mask)
    cdef void glTessellationFactorAMD(float factor)
    cdef void glTessellationModeAMD(unsigned int mode)
    cdef GLboolean glTestFenceAPPLE(unsigned int fence)
    cdef GLboolean glTestFenceNV(unsigned int fence)
    cdef GLboolean glTestObjectAPPLE(unsigned int object, unsigned int name)
    cdef void glTexBuffer(unsigned int target, unsigned int internalformat, unsigned int buffer)
    cdef void glTexBufferARB(unsigned int target, unsigned int internalformat, unsigned int buffer)
    cdef void glTexBufferEXT(unsigned int target, unsigned int internalformat, unsigned int buffer)
    cdef void glTexBufferRange(unsigned int target, unsigned int internalformat, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glTexBumpParameterfvATI(unsigned int pname, const float* param)
    cdef void glTexBumpParameterivATI(unsigned int pname, const int* param)
    cdef void glTexCoord1bOES(signed char s)
    cdef void glTexCoord1bvOES(const signed char* coords)
    cdef void glTexCoord1d(double s)
    cdef void glTexCoord1dv(const double* v)
    cdef void glTexCoord1f(float s)
    cdef void glTexCoord1fv(const float* v)
    cdef void glTexCoord1hNV(unsigned short s)
    cdef void glTexCoord1hvNV(const unsigned short* v)
    cdef void glTexCoord1i(int s)
    cdef void glTexCoord1iv(const int* v)
    cdef void glTexCoord1s(short s)
    cdef void glTexCoord1sv(const short* v)
    cdef void glTexCoord1xOES(GLint s)
    cdef void glTexCoord1xvOES(const GLint* coords)
    cdef void glTexCoord2bOES(signed char s, signed char t)
    cdef void glTexCoord2bvOES(const signed char* coords)
    cdef void glTexCoord2d(double s, double t)
    cdef void glTexCoord2dv(const double* v)
    cdef void glTexCoord2f(float s, float t)
    cdef void glTexCoord2fColor3fVertex3fSUN(float s, float t, float r, float g, float b, float x, float y, float z)
    cdef void glTexCoord2fColor3fVertex3fvSUN(const float* tc, const float* c, const float* v)
    cdef void glTexCoord2fColor4fNormal3fVertex3fSUN(float s, float t, float r, float g, float b, float a, float nx, float ny, float nz, float x, float y, float z)
    cdef void glTexCoord2fColor4fNormal3fVertex3fvSUN(const float* tc, const float* c, const float* n, const float* v)
    cdef void glTexCoord2fColor4ubVertex3fSUN(float s, float t, unsigned char r, unsigned char g, unsigned char b, unsigned char a, float x, float y, float z)
    cdef void glTexCoord2fColor4ubVertex3fvSUN(const float* tc, const unsigned char* c, const float* v)
    cdef void glTexCoord2fNormal3fVertex3fSUN(float s, float t, float nx, float ny, float nz, float x, float y, float z)
    cdef void glTexCoord2fNormal3fVertex3fvSUN(const float* tc, const float* n, const float* v)
    cdef void glTexCoord2fVertex3fSUN(float s, float t, float x, float y, float z)
    cdef void glTexCoord2fVertex3fvSUN(const float* tc, const float* v)
    cdef void glTexCoord2fv(const float* v)
    cdef void glTexCoord2hNV(unsigned short s, unsigned short t)
    cdef void glTexCoord2hvNV(const unsigned short* v)
    cdef void glTexCoord2i(int s, int t)
    cdef void glTexCoord2iv(const int* v)
    cdef void glTexCoord2s(short s, short t)
    cdef void glTexCoord2sv(const short* v)
    cdef void glTexCoord2xOES(GLint s, GLint t)
    cdef void glTexCoord2xvOES(const GLint* coords)
    cdef void glTexCoord3bOES(signed char s, signed char t, signed char r)
    cdef void glTexCoord3bvOES(const signed char* coords)
    cdef void glTexCoord3d(double s, double t, double r)
    cdef void glTexCoord3dv(const double* v)
    cdef void glTexCoord3f(float s, float t, float r)
    cdef void glTexCoord3fv(const float* v)
    cdef void glTexCoord3hNV(unsigned short s, unsigned short t, unsigned short r)
    cdef void glTexCoord3hvNV(const unsigned short* v)
    cdef void glTexCoord3i(int s, int t, int r)
    cdef void glTexCoord3iv(const int* v)
    cdef void glTexCoord3s(short s, short t, short r)
    cdef void glTexCoord3sv(const short* v)
    cdef void glTexCoord3xOES(GLint s, GLint t, GLint r)
    cdef void glTexCoord3xvOES(const GLint* coords)
    cdef void glTexCoord4bOES(signed char s, signed char t, signed char r, signed char q)
    cdef void glTexCoord4bvOES(const signed char* coords)
    cdef void glTexCoord4d(double s, double t, double r, double q)
    cdef void glTexCoord4dv(const double* v)
    cdef void glTexCoord4f(float s, float t, float r, float q)
    cdef void glTexCoord4fColor4fNormal3fVertex4fSUN(float s, float t, float p, float q, float r, float g, float b, float a, float nx, float ny, float nz, float x, float y, float z, float w)
    cdef void glTexCoord4fColor4fNormal3fVertex4fvSUN(const float* tc, const float* c, const float* n, const float* v)
    cdef void glTexCoord4fVertex4fSUN(float s, float t, float p, float q, float x, float y, float z, float w)
    cdef void glTexCoord4fVertex4fvSUN(const float* tc, const float* v)
    cdef void glTexCoord4fv(const float* v)
    cdef void glTexCoord4hNV(unsigned short s, unsigned short t, unsigned short r, unsigned short q)
    cdef void glTexCoord4hvNV(const unsigned short* v)
    cdef void glTexCoord4i(int s, int t, int r, int q)
    cdef void glTexCoord4iv(const int* v)
    cdef void glTexCoord4s(short s, short t, short r, short q)
    cdef void glTexCoord4sv(const short* v)
    cdef void glTexCoord4xOES(GLint s, GLint t, GLint r, GLint q)
    cdef void glTexCoord4xvOES(const GLint* coords)
    cdef void glTexCoordFormatNV(int size, unsigned int type, int stride)
    cdef void glTexCoordP1ui(unsigned int type, unsigned int coords)
    cdef void glTexCoordP1uiv(unsigned int type, const unsigned int* coords)
    cdef void glTexCoordP2ui(unsigned int type, unsigned int coords)
    cdef void glTexCoordP2uiv(unsigned int type, const unsigned int* coords)
    cdef void glTexCoordP3ui(unsigned int type, unsigned int coords)
    cdef void glTexCoordP3uiv(unsigned int type, const unsigned int* coords)
    cdef void glTexCoordP4ui(unsigned int type, unsigned int coords)
    cdef void glTexCoordP4uiv(unsigned int type, const unsigned int* coords)
    cdef void glTexCoordPointer(int size, unsigned int type, int stride, const void* pointer)
    cdef void glTexCoordPointerEXT(int size, unsigned int type, int stride, int count, const void* pointer)
    cdef void glTexCoordPointerListIBM(int size, unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glTexCoordPointervINTEL(int size, unsigned int type, const void** pointer)
    cdef void glTexEnvf(unsigned int target, unsigned int pname, float param)
    cdef void glTexEnvfv(unsigned int target, unsigned int pname, const float* params)
    cdef void glTexEnvi(unsigned int target, unsigned int pname, int param)
    cdef void glTexEnviv(unsigned int target, unsigned int pname, const int* params)
    cdef void glTexEnvxOES(unsigned int target, unsigned int pname, GLint param)
    cdef void glTexEnvxvOES(unsigned int target, unsigned int pname, const GLint* params)
    cdef void glTexFilterFuncSGIS(unsigned int target, unsigned int filter, int n, const float* weights)
    cdef void glTexGend(unsigned int coord, unsigned int pname, double param)
    cdef void glTexGendv(unsigned int coord, unsigned int pname, const double* params)
    cdef void glTexGenf(unsigned int coord, unsigned int pname, float param)
    cdef void glTexGenfv(unsigned int coord, unsigned int pname, const float* params)
    cdef void glTexGeni(unsigned int coord, unsigned int pname, int param)
    cdef void glTexGeniv(unsigned int coord, unsigned int pname, const int* params)
    cdef void glTexGenxOES(unsigned int coord, unsigned int pname, GLint param)
    cdef void glTexGenxvOES(unsigned int coord, unsigned int pname, const GLint* params)
    cdef void glTexImage1D(unsigned int target, int level, int internalformat, int width, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexImage2D(unsigned int target, int level, int internalformat, int width, int height, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexImage2DMultisample(unsigned int target, int samples, unsigned int internalformat, int width, int height, unsigned char fixedsamplelocations)
    cdef void glTexImage2DMultisampleCoverageNV(unsigned int target, int coverageSamples, int colorSamples, int internalFormat, int width, int height, unsigned char fixedSampleLocations)
    cdef void glTexImage3D(unsigned int target, int level, int internalformat, int width, int height, int depth, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexImage3DEXT(unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexImage3DMultisample(unsigned int target, int samples, unsigned int internalformat, int width, int height, int depth, unsigned char fixedsamplelocations)
    cdef void glTexImage3DMultisampleCoverageNV(unsigned int target, int coverageSamples, int colorSamples, int internalFormat, int width, int height, int depth, unsigned char fixedSampleLocations)
    cdef void glTexImage4DSGIS(unsigned int target, int level, unsigned int internalformat, int width, int height, int depth, int size4d, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexPageCommitmentARB(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned char commit)
    cdef void glTexParameterIiv(unsigned int target, unsigned int pname, const int* params)
    cdef void glTexParameterIivEXT(unsigned int target, unsigned int pname, const int* params)
    cdef void glTexParameterIuiv(unsigned int target, unsigned int pname, const unsigned int* params)
    cdef void glTexParameterIuivEXT(unsigned int target, unsigned int pname, const unsigned int* params)
    cdef void glTexParameterf(unsigned int target, unsigned int pname, float param)
    cdef void glTexParameterfv(unsigned int target, unsigned int pname, const float* params)
    cdef void glTexParameteri(unsigned int target, unsigned int pname, int param)
    cdef void glTexParameteriv(unsigned int target, unsigned int pname, const int* params)
    cdef void glTexParameterxOES(unsigned int target, unsigned int pname, GLint param)
    cdef void glTexParameterxvOES(unsigned int target, unsigned int pname, const GLint* params)
    cdef void glTexRenderbufferNV(unsigned int target, unsigned int renderbuffer)
    cdef void glTexStorage1D(unsigned int target, int levels, unsigned int internalformat, int width)
    cdef void glTexStorage2D(unsigned int target, int levels, unsigned int internalformat, int width, int height)
    cdef void glTexStorage2DMultisample(unsigned int target, int samples, unsigned int internalformat, int width, int height, unsigned char fixedsamplelocations)
    cdef void glTexStorage3D(unsigned int target, int levels, unsigned int internalformat, int width, int height, int depth)
    cdef void glTexStorage3DMultisample(unsigned int target, int samples, unsigned int internalformat, int width, int height, int depth, unsigned char fixedsamplelocations)
    cdef void glTexStorageSparseAMD(unsigned int target, unsigned int internalFormat, int width, int height, int depth, int layers, unsigned int flags)
    cdef void glTexSubImage1D(unsigned int target, int level, int xoffset, int width, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage1DEXT(unsigned int target, int level, int xoffset, int width, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage2D(unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage2DEXT(unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage3D(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage3DEXT(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTexSubImage4DSGIS(unsigned int target, int level, int xoffset, int yoffset, int zoffset, int woffset, int width, int height, int depth, int size4d, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureBarrier()
    cdef void glTextureBarrierNV()
    cdef void glTextureBuffer(unsigned int texture, unsigned int internalformat, unsigned int buffer)
    cdef void glTextureBufferEXT(unsigned int texture, unsigned int target, unsigned int internalformat, unsigned int buffer)
    cdef void glTextureBufferRange(unsigned int texture, unsigned int internalformat, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glTextureBufferRangeEXT(unsigned int texture, unsigned int target, unsigned int internalformat, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glTextureColorMaskSGIS(unsigned char red, unsigned char green, unsigned char blue, unsigned char alpha)
    cdef void glTextureImage1DEXT(unsigned int texture, unsigned int target, int level, int internalformat, int width, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureImage2DEXT(unsigned int texture, unsigned int target, int level, int internalformat, int width, int height, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureImage2DMultisampleCoverageNV(unsigned int texture, unsigned int target, int coverageSamples, int colorSamples, int internalFormat, int width, int height, unsigned char fixedSampleLocations)
    cdef void glTextureImage2DMultisampleNV(unsigned int texture, unsigned int target, int samples, int internalFormat, int width, int height, unsigned char fixedSampleLocations)
    cdef void glTextureImage3DEXT(unsigned int texture, unsigned int target, int level, int internalformat, int width, int height, int depth, int border, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureImage3DMultisampleCoverageNV(unsigned int texture, unsigned int target, int coverageSamples, int colorSamples, int internalFormat, int width, int height, int depth, unsigned char fixedSampleLocations)
    cdef void glTextureImage3DMultisampleNV(unsigned int texture, unsigned int target, int samples, int internalFormat, int width, int height, int depth, unsigned char fixedSampleLocations)
    cdef void glTextureLightEXT(unsigned int pname)
    cdef void glTextureMaterialEXT(unsigned int face, unsigned int mode)
    cdef void glTextureNormalEXT(unsigned int mode)
    cdef void glTexturePageCommitmentEXT(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned char commit)
    cdef void glTextureParameterIiv(unsigned int texture, unsigned int pname, const int* params)
    cdef void glTextureParameterIivEXT(unsigned int texture, unsigned int target, unsigned int pname, const int* params)
    cdef void glTextureParameterIuiv(unsigned int texture, unsigned int pname, const unsigned int* params)
    cdef void glTextureParameterIuivEXT(unsigned int texture, unsigned int target, unsigned int pname, const unsigned int* params)
    cdef void glTextureParameterf(unsigned int texture, unsigned int pname, float param)
    cdef void glTextureParameterfEXT(unsigned int texture, unsigned int target, unsigned int pname, float param)
    cdef void glTextureParameterfv(unsigned int texture, unsigned int pname, const float* param)
    cdef void glTextureParameterfvEXT(unsigned int texture, unsigned int target, unsigned int pname, const float* params)
    cdef void glTextureParameteri(unsigned int texture, unsigned int pname, int param)
    cdef void glTextureParameteriEXT(unsigned int texture, unsigned int target, unsigned int pname, int param)
    cdef void glTextureParameteriv(unsigned int texture, unsigned int pname, const int* param)
    cdef void glTextureParameterivEXT(unsigned int texture, unsigned int target, unsigned int pname, const int* params)
    cdef void glTextureRangeAPPLE(unsigned int target, int length, const void* pointer)
    cdef void glTextureRenderbufferEXT(unsigned int texture, unsigned int target, unsigned int renderbuffer)
    cdef void glTextureStorage1D(unsigned int texture, int levels, unsigned int internalformat, int width)
    cdef void glTextureStorage1DEXT(unsigned int texture, unsigned int target, int levels, unsigned int internalformat, int width)
    cdef void glTextureStorage2D(unsigned int texture, int levels, unsigned int internalformat, int width, int height)
    cdef void glTextureStorage2DEXT(unsigned int texture, unsigned int target, int levels, unsigned int internalformat, int width, int height)
    cdef void glTextureStorage2DMultisample(unsigned int texture, int samples, unsigned int internalformat, int width, int height, unsigned char fixedsamplelocations)
    cdef void glTextureStorage2DMultisampleEXT(unsigned int texture, unsigned int target, int samples, unsigned int internalformat, int width, int height, unsigned char fixedsamplelocations)
    cdef void glTextureStorage3D(unsigned int texture, int levels, unsigned int internalformat, int width, int height, int depth)
    cdef void glTextureStorage3DEXT(unsigned int texture, unsigned int target, int levels, unsigned int internalformat, int width, int height, int depth)
    cdef void glTextureStorage3DMultisample(unsigned int texture, int samples, unsigned int internalformat, int width, int height, int depth, unsigned char fixedsamplelocations)
    cdef void glTextureStorage3DMultisampleEXT(unsigned int texture, unsigned int target, int samples, unsigned int internalformat, int width, int height, int depth, unsigned char fixedsamplelocations)
    cdef void glTextureStorageSparseAMD(unsigned int texture, unsigned int target, unsigned int internalFormat, int width, int height, int depth, int layers, unsigned int flags)
    cdef void glTextureSubImage1D(unsigned int texture, int level, int xoffset, int width, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureSubImage1DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int width, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureSubImage2D(unsigned int texture, int level, int xoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureSubImage2DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int width, int height, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureSubImage3D(unsigned int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureSubImage3DEXT(unsigned int texture, unsigned int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, unsigned int format, unsigned int type, const void* pixels)
    cdef void glTextureView(unsigned int texture, unsigned int target, unsigned int origtexture, unsigned int internalformat, unsigned int minlevel, unsigned int numlevels, unsigned int minlayer, unsigned int numlayers)
    cdef void glTrackMatrixNV(unsigned int target, unsigned int address, unsigned int matrix, unsigned int transform)
    cdef void glTransformFeedbackAttribsNV(int count, const int* attribs, unsigned int bufferMode)
    cdef void glTransformFeedbackBufferBase(unsigned int xfb, unsigned int index, unsigned int buffer)
    cdef void glTransformFeedbackBufferRange(unsigned int xfb, unsigned int index, unsigned int buffer, ptrdiff_t offset, ptrdiff_t size)
    cdef void glTransformFeedbackStreamAttribsNV(int count, const int* attribs, int nbuffers, const int* bufstreams, unsigned int bufferMode)
    cdef void glTransformFeedbackVaryings(unsigned int program, int count, const char** varyings, unsigned int bufferMode)
    cdef void glTransformFeedbackVaryingsEXT(unsigned int program, int count, const char** varyings, unsigned int bufferMode)
    cdef void glTransformFeedbackVaryingsNV(unsigned int program, int count, const int* locations, unsigned int bufferMode)
    cdef void glTransformPathNV(unsigned int resultPath, unsigned int srcPath, unsigned int transformType, const float* transformValues)
    cdef void glTranslated(double x, double y, double z)
    cdef void glTranslatef(float x, float y, float z)
    cdef void glTranslatexOES(GLint x, GLint y, GLint z)
    cdef void glUniform1d(int location, double x)
    cdef void glUniform1dv(int location, int count, const double* value)
    cdef void glUniform1f(int location, float v0)
    cdef void glUniform1fARB(int location, float v0)
    cdef void glUniform1fv(int location, int count, const float* value)
    cdef void glUniform1fvARB(int location, int count, const float* value)
    cdef void glUniform1i(int location, int v0)
    cdef void glUniform1i64ARB(int location, int64_t x)
    cdef void glUniform1i64NV(int location, int64_t x)
    cdef void glUniform1i64vARB(int location, int count, const int64_t* value)
    cdef void glUniform1i64vNV(int location, int count, const int64_t* value)
    cdef void glUniform1iARB(int location, int v0)
    cdef void glUniform1iv(int location, int count, const int* value)
    cdef void glUniform1ivARB(int location, int count, const int* value)
    cdef void glUniform1ui(int location, unsigned int v0)
    cdef void glUniform1ui64ARB(int location, uint64_t x)
    cdef void glUniform1ui64NV(int location, uint64_t x)
    cdef void glUniform1ui64vARB(int location, int count, const uint64_t* value)
    cdef void glUniform1ui64vNV(int location, int count, const uint64_t* value)
    cdef void glUniform1uiEXT(int location, unsigned int v0)
    cdef void glUniform1uiv(int location, int count, const unsigned int* value)
    cdef void glUniform1uivEXT(int location, int count, const unsigned int* value)
    cdef void glUniform2d(int location, double x, double y)
    cdef void glUniform2dv(int location, int count, const double* value)
    cdef void glUniform2f(int location, float v0, float v1)
    cdef void glUniform2fARB(int location, float v0, float v1)
    cdef void glUniform2fv(int location, int count, const float* value)
    cdef void glUniform2fvARB(int location, int count, const float* value)
    cdef void glUniform2i(int location, int v0, int v1)
    cdef void glUniform2i64ARB(int location, int64_t x, int64_t y)
    cdef void glUniform2i64NV(int location, int64_t x, int64_t y)
    cdef void glUniform2i64vARB(int location, int count, const int64_t* value)
    cdef void glUniform2i64vNV(int location, int count, const int64_t* value)
    cdef void glUniform2iARB(int location, int v0, int v1)
    cdef void glUniform2iv(int location, int count, const int* value)
    cdef void glUniform2ivARB(int location, int count, const int* value)
    cdef void glUniform2ui(int location, unsigned int v0, unsigned int v1)
    cdef void glUniform2ui64ARB(int location, uint64_t x, uint64_t y)
    cdef void glUniform2ui64NV(int location, uint64_t x, uint64_t y)
    cdef void glUniform2ui64vARB(int location, int count, const uint64_t* value)
    cdef void glUniform2ui64vNV(int location, int count, const uint64_t* value)
    cdef void glUniform2uiEXT(int location, unsigned int v0, unsigned int v1)
    cdef void glUniform2uiv(int location, int count, const unsigned int* value)
    cdef void glUniform2uivEXT(int location, int count, const unsigned int* value)
    cdef void glUniform3d(int location, double x, double y, double z)
    cdef void glUniform3dv(int location, int count, const double* value)
    cdef void glUniform3f(int location, float v0, float v1, float v2)
    cdef void glUniform3fARB(int location, float v0, float v1, float v2)
    cdef void glUniform3fv(int location, int count, const float* value)
    cdef void glUniform3fvARB(int location, int count, const float* value)
    cdef void glUniform3i(int location, int v0, int v1, int v2)
    cdef void glUniform3i64ARB(int location, int64_t x, int64_t y, int64_t z)
    cdef void glUniform3i64NV(int location, int64_t x, int64_t y, int64_t z)
    cdef void glUniform3i64vARB(int location, int count, const int64_t* value)
    cdef void glUniform3i64vNV(int location, int count, const int64_t* value)
    cdef void glUniform3iARB(int location, int v0, int v1, int v2)
    cdef void glUniform3iv(int location, int count, const int* value)
    cdef void glUniform3ivARB(int location, int count, const int* value)
    cdef void glUniform3ui(int location, unsigned int v0, unsigned int v1, unsigned int v2)
    cdef void glUniform3ui64ARB(int location, uint64_t x, uint64_t y, uint64_t z)
    cdef void glUniform3ui64NV(int location, uint64_t x, uint64_t y, uint64_t z)
    cdef void glUniform3ui64vARB(int location, int count, const uint64_t* value)
    cdef void glUniform3ui64vNV(int location, int count, const uint64_t* value)
    cdef void glUniform3uiEXT(int location, unsigned int v0, unsigned int v1, unsigned int v2)
    cdef void glUniform3uiv(int location, int count, const unsigned int* value)
    cdef void glUniform3uivEXT(int location, int count, const unsigned int* value)
    cdef void glUniform4d(int location, double x, double y, double z, double w)
    cdef void glUniform4dv(int location, int count, const double* value)
    cdef void glUniform4f(int location, float v0, float v1, float v2, float v3)
    cdef void glUniform4fARB(int location, float v0, float v1, float v2, float v3)
    cdef void glUniform4fv(int location, int count, const float* value)
    cdef void glUniform4fvARB(int location, int count, const float* value)
    cdef void glUniform4i(int location, int v0, int v1, int v2, int v3)
    cdef void glUniform4i64ARB(int location, int64_t x, int64_t y, int64_t z, int64_t w)
    cdef void glUniform4i64NV(int location, int64_t x, int64_t y, int64_t z, int64_t w)
    cdef void glUniform4i64vARB(int location, int count, const int64_t* value)
    cdef void glUniform4i64vNV(int location, int count, const int64_t* value)
    cdef void glUniform4iARB(int location, int v0, int v1, int v2, int v3)
    cdef void glUniform4iv(int location, int count, const int* value)
    cdef void glUniform4ivARB(int location, int count, const int* value)
    cdef void glUniform4ui(int location, unsigned int v0, unsigned int v1, unsigned int v2, unsigned int v3)
    cdef void glUniform4ui64ARB(int location, uint64_t x, uint64_t y, uint64_t z, uint64_t w)
    cdef void glUniform4ui64NV(int location, uint64_t x, uint64_t y, uint64_t z, uint64_t w)
    cdef void glUniform4ui64vARB(int location, int count, const uint64_t* value)
    cdef void glUniform4ui64vNV(int location, int count, const uint64_t* value)
    cdef void glUniform4uiEXT(int location, unsigned int v0, unsigned int v1, unsigned int v2, unsigned int v3)
    cdef void glUniform4uiv(int location, int count, const unsigned int* value)
    cdef void glUniform4uivEXT(int location, int count, const unsigned int* value)
    cdef void glUniformBlockBinding(unsigned int program, unsigned int uniformBlockIndex, unsigned int uniformBlockBinding)
    cdef void glUniformBufferEXT(unsigned int program, int location, unsigned int buffer)
    cdef void glUniformHandleui64ARB(int location, uint64_t value)
    cdef void glUniformHandleui64NV(int location, uint64_t value)
    cdef void glUniformHandleui64vARB(int location, int count, const uint64_t* value)
    cdef void glUniformHandleui64vNV(int location, int count, const uint64_t* value)
    cdef void glUniformMatrix2dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix2fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix2fvARB(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix2x3dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix2x3fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix2x4dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix2x4fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix3dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix3fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix3fvARB(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix3x2dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix3x2fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix3x4dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix3x4fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix4dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix4fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix4fvARB(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix4x2dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix4x2fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformMatrix4x3dv(int location, int count, unsigned char transpose, const double* value)
    cdef void glUniformMatrix4x3fv(int location, int count, unsigned char transpose, const float* value)
    cdef void glUniformSubroutinesuiv(unsigned int shadertype, int count, const unsigned int* indices)
    cdef void glUniformui64NV(int location, uint64_t value)
    cdef void glUniformui64vNV(int location, int count, const uint64_t* value)
    cdef void glUnlockArraysEXT()
    cdef GLboolean glUnmapBuffer(unsigned int target)
    cdef GLboolean glUnmapBufferARB(unsigned int target)
    cdef GLboolean glUnmapNamedBuffer(unsigned int buffer)
    cdef GLboolean glUnmapNamedBufferEXT(unsigned int buffer)
    cdef void glUnmapObjectBufferATI(unsigned int buffer)
    cdef void glUnmapTexture2DINTEL(unsigned int texture, int level)
    cdef void glUpdateObjectBufferATI(unsigned int buffer, unsigned int offset, int size, const void* pointer, unsigned int preserve)
    cdef void glUseProgram(unsigned int program)
    cdef void glUseProgramStages(unsigned int pipeline, unsigned int stages, unsigned int program)
    cdef void glUseProgramStagesEXT(unsigned int pipeline, unsigned int stages, unsigned int program)
    cdef void glUseShaderProgramEXT(unsigned int type, unsigned int program)
    cdef void glVDPAUFiniNV()
    cdef void glVDPAUGetSurfaceivNV(GLintptr surface, unsigned int pname, int bufSize, int* length, int* values)
    cdef void glVDPAUInitNV(const void* vdpDevice, const void* getProcAddress)
    cdef GLboolean glVDPAUIsSurfaceNV(GLintptr surface)
    cdef void glVDPAUMapSurfacesNV(int numSurfaces, const GLintptr* surfaces)
    cdef GLvdpauSurfaceNV glVDPAURegisterOutputSurfaceNV(const void* vdpSurface, unsigned int target, int numTextureNames, const unsigned int* textureNames)
    cdef GLvdpauSurfaceNV glVDPAURegisterVideoSurfaceNV(const void* vdpSurface, unsigned int target, int numTextureNames, const unsigned int* textureNames)
    cdef void glVDPAUSurfaceAccessNV(GLintptr surface, unsigned int access)
    cdef void glVDPAUUnmapSurfacesNV(int numSurface, const GLintptr* surfaces)
    cdef void glVDPAUUnregisterSurfaceNV(GLintptr surface)
    cdef void glValidateProgram(unsigned int program)
    cdef void glValidateProgramPipeline(unsigned int pipeline)
    cdef void glValidateProgramPipelineEXT(unsigned int pipeline)
    cdef void glVariantArrayObjectATI(unsigned int id, unsigned int type, int stride, unsigned int buffer, unsigned int offset)
    cdef void glVariantPointerEXT(unsigned int id, unsigned int type, unsigned int stride, const void* addr)
    cdef void glVariantbvEXT(unsigned int id, const signed char* addr)
    cdef void glVariantdvEXT(unsigned int id, const double* addr)
    cdef void glVariantfvEXT(unsigned int id, const float* addr)
    cdef void glVariantivEXT(unsigned int id, const int* addr)
    cdef void glVariantsvEXT(unsigned int id, const short* addr)
    cdef void glVariantubvEXT(unsigned int id, const unsigned char* addr)
    cdef void glVariantuivEXT(unsigned int id, const unsigned int* addr)
    cdef void glVariantusvEXT(unsigned int id, const unsigned short* addr)
    cdef void glVertex2bOES(signed char x, signed char y)
    cdef void glVertex2bvOES(const signed char* coords)
    cdef void glVertex2d(double x, double y)
    cdef void glVertex2dv(const double* v)
    cdef void glVertex2f(float x, float y)
    cdef void glVertex2fv(const float* v)
    cdef void glVertex2hNV(unsigned short x, unsigned short y)
    cdef void glVertex2hvNV(const unsigned short* v)
    cdef void glVertex2i(int x, int y)
    cdef void glVertex2iv(const int* v)
    cdef void glVertex2s(short x, short y)
    cdef void glVertex2sv(const short* v)
    cdef void glVertex2xOES(GLint x)
    cdef void glVertex2xvOES(const GLint* coords)
    cdef void glVertex3bOES(signed char x, signed char y, signed char z)
    cdef void glVertex3bvOES(const signed char* coords)
    cdef void glVertex3d(double x, double y, double z)
    cdef void glVertex3dv(const double* v)
    cdef void glVertex3f(float x, float y, float z)
    cdef void glVertex3fv(const float* v)
    cdef void glVertex3hNV(unsigned short x, unsigned short y, unsigned short z)
    cdef void glVertex3hvNV(const unsigned short* v)
    cdef void glVertex3i(int x, int y, int z)
    cdef void glVertex3iv(const int* v)
    cdef void glVertex3s(short x, short y, short z)
    cdef void glVertex3sv(const short* v)
    cdef void glVertex3xOES(GLint x, GLint y)
    cdef void glVertex3xvOES(const GLint* coords)
    cdef void glVertex4bOES(signed char x, signed char y, signed char z, signed char w)
    cdef void glVertex4bvOES(const signed char* coords)
    cdef void glVertex4d(double x, double y, double z, double w)
    cdef void glVertex4dv(const double* v)
    cdef void glVertex4f(float x, float y, float z, float w)
    cdef void glVertex4fv(const float* v)
    cdef void glVertex4hNV(unsigned short x, unsigned short y, unsigned short z, unsigned short w)
    cdef void glVertex4hvNV(const unsigned short* v)
    cdef void glVertex4i(int x, int y, int z, int w)
    cdef void glVertex4iv(const int* v)
    cdef void glVertex4s(short x, short y, short z, short w)
    cdef void glVertex4sv(const short* v)
    cdef void glVertex4xOES(GLint x, GLint y, GLint z)
    cdef void glVertex4xvOES(const GLint* coords)
    cdef void glVertexArrayAttribBinding(unsigned int vaobj, unsigned int attribindex, unsigned int bindingindex)
    cdef void glVertexArrayAttribFormat(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned char normalized, unsigned int relativeoffset)
    cdef void glVertexArrayAttribIFormat(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexArrayAttribLFormat(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexArrayBindVertexBufferEXT(unsigned int vaobj, unsigned int bindingindex, unsigned int buffer, ptrdiff_t offset, int stride)
    cdef void glVertexArrayBindingDivisor(unsigned int vaobj, unsigned int bindingindex, unsigned int divisor)
    cdef void glVertexArrayColorOffsetEXT(unsigned int vaobj, unsigned int buffer, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayEdgeFlagOffsetEXT(unsigned int vaobj, unsigned int buffer, int stride, ptrdiff_t offset)
    cdef void glVertexArrayElementBuffer(unsigned int vaobj, unsigned int buffer)
    cdef void glVertexArrayFogCoordOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayIndexOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayMultiTexCoordOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int texunit, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayNormalOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayParameteriAPPLE(unsigned int pname, int param)
    cdef void glVertexArrayRangeAPPLE(int length, void* pointer)
    cdef void glVertexArrayRangeNV(int length, const void* pointer)
    cdef void glVertexArraySecondaryColorOffsetEXT(unsigned int vaobj, unsigned int buffer, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayTexCoordOffsetEXT(unsigned int vaobj, unsigned int buffer, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayVertexAttribBindingEXT(unsigned int vaobj, unsigned int attribindex, unsigned int bindingindex)
    cdef void glVertexArrayVertexAttribDivisorEXT(unsigned int vaobj, unsigned int index, unsigned int divisor)
    cdef void glVertexArrayVertexAttribFormatEXT(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned char normalized, unsigned int relativeoffset)
    cdef void glVertexArrayVertexAttribIFormatEXT(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexArrayVertexAttribIOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int index, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayVertexAttribLFormatEXT(unsigned int vaobj, unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexArrayVertexAttribLOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int index, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexArrayVertexAttribOffsetEXT(unsigned int vaobj, unsigned int buffer, unsigned int index, int size, unsigned int type, unsigned char normalized, int stride, ptrdiff_t offset)
    cdef void glVertexArrayVertexBindingDivisorEXT(unsigned int vaobj, unsigned int bindingindex, unsigned int divisor)
    cdef void glVertexArrayVertexBuffer(unsigned int vaobj, unsigned int bindingindex, unsigned int buffer, ptrdiff_t offset, int stride)
    cdef void glVertexArrayVertexBuffers(unsigned int vaobj, unsigned int first, int count, const unsigned int* buffers, const ptrdiff_t* offsets, const int* strides)
    cdef void glVertexArrayVertexOffsetEXT(unsigned int vaobj, unsigned int buffer, int size, unsigned int type, int stride, ptrdiff_t offset)
    cdef void glVertexAttrib1d(unsigned int index, double x)
    cdef void glVertexAttrib1dARB(unsigned int index, double x)
    cdef void glVertexAttrib1dNV(unsigned int index, double x)
    cdef void glVertexAttrib1dv(unsigned int index, const double* v)
    cdef void glVertexAttrib1dvARB(unsigned int index, const double* v)
    cdef void glVertexAttrib1dvNV(unsigned int index, const double* v)
    cdef void glVertexAttrib1f(unsigned int index, float x)
    cdef void glVertexAttrib1fARB(unsigned int index, float x)
    cdef void glVertexAttrib1fNV(unsigned int index, float x)
    cdef void glVertexAttrib1fv(unsigned int index, const float* v)
    cdef void glVertexAttrib1fvARB(unsigned int index, const float* v)
    cdef void glVertexAttrib1fvNV(unsigned int index, const float* v)
    cdef void glVertexAttrib1hNV(unsigned int index, unsigned short x)
    cdef void glVertexAttrib1hvNV(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib1s(unsigned int index, short x)
    cdef void glVertexAttrib1sARB(unsigned int index, short x)
    cdef void glVertexAttrib1sNV(unsigned int index, short x)
    cdef void glVertexAttrib1sv(unsigned int index, const short* v)
    cdef void glVertexAttrib1svARB(unsigned int index, const short* v)
    cdef void glVertexAttrib1svNV(unsigned int index, const short* v)
    cdef void glVertexAttrib2d(unsigned int index, double x, double y)
    cdef void glVertexAttrib2dARB(unsigned int index, double x, double y)
    cdef void glVertexAttrib2dNV(unsigned int index, double x, double y)
    cdef void glVertexAttrib2dv(unsigned int index, const double* v)
    cdef void glVertexAttrib2dvARB(unsigned int index, const double* v)
    cdef void glVertexAttrib2dvNV(unsigned int index, const double* v)
    cdef void glVertexAttrib2f(unsigned int index, float x, float y)
    cdef void glVertexAttrib2fARB(unsigned int index, float x, float y)
    cdef void glVertexAttrib2fNV(unsigned int index, float x, float y)
    cdef void glVertexAttrib2fv(unsigned int index, const float* v)
    cdef void glVertexAttrib2fvARB(unsigned int index, const float* v)
    cdef void glVertexAttrib2fvNV(unsigned int index, const float* v)
    cdef void glVertexAttrib2hNV(unsigned int index, unsigned short x, unsigned short y)
    cdef void glVertexAttrib2hvNV(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib2s(unsigned int index, short x, short y)
    cdef void glVertexAttrib2sARB(unsigned int index, short x, short y)
    cdef void glVertexAttrib2sNV(unsigned int index, short x, short y)
    cdef void glVertexAttrib2sv(unsigned int index, const short* v)
    cdef void glVertexAttrib2svARB(unsigned int index, const short* v)
    cdef void glVertexAttrib2svNV(unsigned int index, const short* v)
    cdef void glVertexAttrib3d(unsigned int index, double x, double y, double z)
    cdef void glVertexAttrib3dARB(unsigned int index, double x, double y, double z)
    cdef void glVertexAttrib3dNV(unsigned int index, double x, double y, double z)
    cdef void glVertexAttrib3dv(unsigned int index, const double* v)
    cdef void glVertexAttrib3dvARB(unsigned int index, const double* v)
    cdef void glVertexAttrib3dvNV(unsigned int index, const double* v)
    cdef void glVertexAttrib3f(unsigned int index, float x, float y, float z)
    cdef void glVertexAttrib3fARB(unsigned int index, float x, float y, float z)
    cdef void glVertexAttrib3fNV(unsigned int index, float x, float y, float z)
    cdef void glVertexAttrib3fv(unsigned int index, const float* v)
    cdef void glVertexAttrib3fvARB(unsigned int index, const float* v)
    cdef void glVertexAttrib3fvNV(unsigned int index, const float* v)
    cdef void glVertexAttrib3hNV(unsigned int index, unsigned short x, unsigned short y, unsigned short z)
    cdef void glVertexAttrib3hvNV(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib3s(unsigned int index, short x, short y, short z)
    cdef void glVertexAttrib3sARB(unsigned int index, short x, short y, short z)
    cdef void glVertexAttrib3sNV(unsigned int index, short x, short y, short z)
    cdef void glVertexAttrib3sv(unsigned int index, const short* v)
    cdef void glVertexAttrib3svARB(unsigned int index, const short* v)
    cdef void glVertexAttrib3svNV(unsigned int index, const short* v)
    cdef void glVertexAttrib4Nbv(unsigned int index, const signed char* v)
    cdef void glVertexAttrib4NbvARB(unsigned int index, const signed char* v)
    cdef void glVertexAttrib4Niv(unsigned int index, const int* v)
    cdef void glVertexAttrib4NivARB(unsigned int index, const int* v)
    cdef void glVertexAttrib4Nsv(unsigned int index, const short* v)
    cdef void glVertexAttrib4NsvARB(unsigned int index, const short* v)
    cdef void glVertexAttrib4Nub(unsigned int index, unsigned char x, unsigned char y, unsigned char z, unsigned char w)
    cdef void glVertexAttrib4NubARB(unsigned int index, unsigned char x, unsigned char y, unsigned char z, unsigned char w)
    cdef void glVertexAttrib4Nubv(unsigned int index, const unsigned char* v)
    cdef void glVertexAttrib4NubvARB(unsigned int index, const unsigned char* v)
    cdef void glVertexAttrib4Nuiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttrib4NuivARB(unsigned int index, const unsigned int* v)
    cdef void glVertexAttrib4Nusv(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib4NusvARB(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib4bv(unsigned int index, const signed char* v)
    cdef void glVertexAttrib4bvARB(unsigned int index, const signed char* v)
    cdef void glVertexAttrib4d(unsigned int index, double x, double y, double z, double w)
    cdef void glVertexAttrib4dARB(unsigned int index, double x, double y, double z, double w)
    cdef void glVertexAttrib4dNV(unsigned int index, double x, double y, double z, double w)
    cdef void glVertexAttrib4dv(unsigned int index, const double* v)
    cdef void glVertexAttrib4dvARB(unsigned int index, const double* v)
    cdef void glVertexAttrib4dvNV(unsigned int index, const double* v)
    cdef void glVertexAttrib4f(unsigned int index, float x, float y, float z, float w)
    cdef void glVertexAttrib4fARB(unsigned int index, float x, float y, float z, float w)
    cdef void glVertexAttrib4fNV(unsigned int index, float x, float y, float z, float w)
    cdef void glVertexAttrib4fv(unsigned int index, const float* v)
    cdef void glVertexAttrib4fvARB(unsigned int index, const float* v)
    cdef void glVertexAttrib4fvNV(unsigned int index, const float* v)
    cdef void glVertexAttrib4hNV(unsigned int index, unsigned short x, unsigned short y, unsigned short z, unsigned short w)
    cdef void glVertexAttrib4hvNV(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib4iv(unsigned int index, const int* v)
    cdef void glVertexAttrib4ivARB(unsigned int index, const int* v)
    cdef void glVertexAttrib4s(unsigned int index, short x, short y, short z, short w)
    cdef void glVertexAttrib4sARB(unsigned int index, short x, short y, short z, short w)
    cdef void glVertexAttrib4sNV(unsigned int index, short x, short y, short z, short w)
    cdef void glVertexAttrib4sv(unsigned int index, const short* v)
    cdef void glVertexAttrib4svARB(unsigned int index, const short* v)
    cdef void glVertexAttrib4svNV(unsigned int index, const short* v)
    cdef void glVertexAttrib4ubNV(unsigned int index, unsigned char x, unsigned char y, unsigned char z, unsigned char w)
    cdef void glVertexAttrib4ubv(unsigned int index, const unsigned char* v)
    cdef void glVertexAttrib4ubvARB(unsigned int index, const unsigned char* v)
    cdef void glVertexAttrib4ubvNV(unsigned int index, const unsigned char* v)
    cdef void glVertexAttrib4uiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttrib4uivARB(unsigned int index, const unsigned int* v)
    cdef void glVertexAttrib4usv(unsigned int index, const unsigned short* v)
    cdef void glVertexAttrib4usvARB(unsigned int index, const unsigned short* v)
    cdef void glVertexAttribArrayObjectATI(unsigned int index, int size, unsigned int type, unsigned char normalized, int stride, unsigned int buffer, unsigned int offset)
    cdef void glVertexAttribBinding(unsigned int attribindex, unsigned int bindingindex)
    cdef void glVertexAttribDivisor(unsigned int index, unsigned int divisor)
    cdef void glVertexAttribDivisorARB(unsigned int index, unsigned int divisor)
    cdef void glVertexAttribFormat(unsigned int attribindex, int size, unsigned int type, unsigned char normalized, unsigned int relativeoffset)
    cdef void glVertexAttribFormatNV(unsigned int index, int size, unsigned int type, unsigned char normalized, int stride)
    cdef void glVertexAttribI1i(unsigned int index, int x)
    cdef void glVertexAttribI1iEXT(unsigned int index, int x)
    cdef void glVertexAttribI1iv(unsigned int index, const int* v)
    cdef void glVertexAttribI1ivEXT(unsigned int index, const int* v)
    cdef void glVertexAttribI1ui(unsigned int index, unsigned int x)
    cdef void glVertexAttribI1uiEXT(unsigned int index, unsigned int x)
    cdef void glVertexAttribI1uiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI1uivEXT(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI2i(unsigned int index, int x, int y)
    cdef void glVertexAttribI2iEXT(unsigned int index, int x, int y)
    cdef void glVertexAttribI2iv(unsigned int index, const int* v)
    cdef void glVertexAttribI2ivEXT(unsigned int index, const int* v)
    cdef void glVertexAttribI2ui(unsigned int index, unsigned int x, unsigned int y)
    cdef void glVertexAttribI2uiEXT(unsigned int index, unsigned int x, unsigned int y)
    cdef void glVertexAttribI2uiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI2uivEXT(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI3i(unsigned int index, int x, int y, int z)
    cdef void glVertexAttribI3iEXT(unsigned int index, int x, int y, int z)
    cdef void glVertexAttribI3iv(unsigned int index, const int* v)
    cdef void glVertexAttribI3ivEXT(unsigned int index, const int* v)
    cdef void glVertexAttribI3ui(unsigned int index, unsigned int x, unsigned int y, unsigned int z)
    cdef void glVertexAttribI3uiEXT(unsigned int index, unsigned int x, unsigned int y, unsigned int z)
    cdef void glVertexAttribI3uiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI3uivEXT(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI4bv(unsigned int index, const signed char* v)
    cdef void glVertexAttribI4bvEXT(unsigned int index, const signed char* v)
    cdef void glVertexAttribI4i(unsigned int index, int x, int y, int z, int w)
    cdef void glVertexAttribI4iEXT(unsigned int index, int x, int y, int z, int w)
    cdef void glVertexAttribI4iv(unsigned int index, const int* v)
    cdef void glVertexAttribI4ivEXT(unsigned int index, const int* v)
    cdef void glVertexAttribI4sv(unsigned int index, const short* v)
    cdef void glVertexAttribI4svEXT(unsigned int index, const short* v)
    cdef void glVertexAttribI4ubv(unsigned int index, const unsigned char* v)
    cdef void glVertexAttribI4ubvEXT(unsigned int index, const unsigned char* v)
    cdef void glVertexAttribI4ui(unsigned int index, unsigned int x, unsigned int y, unsigned int z, unsigned int w)
    cdef void glVertexAttribI4uiEXT(unsigned int index, unsigned int x, unsigned int y, unsigned int z, unsigned int w)
    cdef void glVertexAttribI4uiv(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI4uivEXT(unsigned int index, const unsigned int* v)
    cdef void glVertexAttribI4usv(unsigned int index, const unsigned short* v)
    cdef void glVertexAttribI4usvEXT(unsigned int index, const unsigned short* v)
    cdef void glVertexAttribIFormat(unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexAttribIFormatNV(unsigned int index, int size, unsigned int type, int stride)
    cdef void glVertexAttribIPointer(unsigned int index, int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexAttribIPointerEXT(unsigned int index, int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexAttribL1d(unsigned int index, double x)
    cdef void glVertexAttribL1dEXT(unsigned int index, double x)
    cdef void glVertexAttribL1dv(unsigned int index, const double* v)
    cdef void glVertexAttribL1dvEXT(unsigned int index, const double* v)
    cdef void glVertexAttribL1i64NV(unsigned int index, int64_t x)
    cdef void glVertexAttribL1i64vNV(unsigned int index, const int64_t* v)
    cdef void glVertexAttribL1ui64ARB(unsigned int index, uint64_t x)
    cdef void glVertexAttribL1ui64NV(unsigned int index, uint64_t x)
    cdef void glVertexAttribL1ui64vARB(unsigned int index, const uint64_t* v)
    cdef void glVertexAttribL1ui64vNV(unsigned int index, const uint64_t* v)
    cdef void glVertexAttribL2d(unsigned int index, double x, double y)
    cdef void glVertexAttribL2dEXT(unsigned int index, double x, double y)
    cdef void glVertexAttribL2dv(unsigned int index, const double* v)
    cdef void glVertexAttribL2dvEXT(unsigned int index, const double* v)
    cdef void glVertexAttribL2i64NV(unsigned int index, int64_t x, int64_t y)
    cdef void glVertexAttribL2i64vNV(unsigned int index, const int64_t* v)
    cdef void glVertexAttribL2ui64NV(unsigned int index, uint64_t x, uint64_t y)
    cdef void glVertexAttribL2ui64vNV(unsigned int index, const uint64_t* v)
    cdef void glVertexAttribL3d(unsigned int index, double x, double y, double z)
    cdef void glVertexAttribL3dEXT(unsigned int index, double x, double y, double z)
    cdef void glVertexAttribL3dv(unsigned int index, const double* v)
    cdef void glVertexAttribL3dvEXT(unsigned int index, const double* v)
    cdef void glVertexAttribL3i64NV(unsigned int index, int64_t x, int64_t y, int64_t z)
    cdef void glVertexAttribL3i64vNV(unsigned int index, const int64_t* v)
    cdef void glVertexAttribL3ui64NV(unsigned int index, uint64_t x, uint64_t y, uint64_t z)
    cdef void glVertexAttribL3ui64vNV(unsigned int index, const uint64_t* v)
    cdef void glVertexAttribL4d(unsigned int index, double x, double y, double z, double w)
    cdef void glVertexAttribL4dEXT(unsigned int index, double x, double y, double z, double w)
    cdef void glVertexAttribL4dv(unsigned int index, const double* v)
    cdef void glVertexAttribL4dvEXT(unsigned int index, const double* v)
    cdef void glVertexAttribL4i64NV(unsigned int index, int64_t x, int64_t y, int64_t z, int64_t w)
    cdef void glVertexAttribL4i64vNV(unsigned int index, const int64_t* v)
    cdef void glVertexAttribL4ui64NV(unsigned int index, uint64_t x, uint64_t y, uint64_t z, uint64_t w)
    cdef void glVertexAttribL4ui64vNV(unsigned int index, const uint64_t* v)
    cdef void glVertexAttribLFormat(unsigned int attribindex, int size, unsigned int type, unsigned int relativeoffset)
    cdef void glVertexAttribLFormatNV(unsigned int index, int size, unsigned int type, int stride)
    cdef void glVertexAttribLPointer(unsigned int index, int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexAttribLPointerEXT(unsigned int index, int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexAttribP1ui(unsigned int index, unsigned int type, unsigned char normalized, unsigned int value)
    cdef void glVertexAttribP1uiv(unsigned int index, unsigned int type, unsigned char normalized, const unsigned int* value)
    cdef void glVertexAttribP2ui(unsigned int index, unsigned int type, unsigned char normalized, unsigned int value)
    cdef void glVertexAttribP2uiv(unsigned int index, unsigned int type, unsigned char normalized, const unsigned int* value)
    cdef void glVertexAttribP3ui(unsigned int index, unsigned int type, unsigned char normalized, unsigned int value)
    cdef void glVertexAttribP3uiv(unsigned int index, unsigned int type, unsigned char normalized, const unsigned int* value)
    cdef void glVertexAttribP4ui(unsigned int index, unsigned int type, unsigned char normalized, unsigned int value)
    cdef void glVertexAttribP4uiv(unsigned int index, unsigned int type, unsigned char normalized, const unsigned int* value)
    cdef void glVertexAttribParameteriAMD(unsigned int index, unsigned int pname, int param)
    cdef void glVertexAttribPointer(unsigned int index, int size, unsigned int type, unsigned char normalized, int stride, const void* pointer)
    cdef void glVertexAttribPointerARB(unsigned int index, int size, unsigned int type, unsigned char normalized, int stride, const void* pointer)
    cdef void glVertexAttribPointerNV(unsigned int index, int fsize, unsigned int type, int stride, const void* pointer)
    cdef void glVertexAttribs1dvNV(unsigned int index, int count, const double* v)
    cdef void glVertexAttribs1fvNV(unsigned int index, int count, const float* v)
    cdef void glVertexAttribs1hvNV(unsigned int index, int n, const unsigned short* v)
    cdef void glVertexAttribs1svNV(unsigned int index, int count, const short* v)
    cdef void glVertexAttribs2dvNV(unsigned int index, int count, const double* v)
    cdef void glVertexAttribs2fvNV(unsigned int index, int count, const float* v)
    cdef void glVertexAttribs2hvNV(unsigned int index, int n, const unsigned short* v)
    cdef void glVertexAttribs2svNV(unsigned int index, int count, const short* v)
    cdef void glVertexAttribs3dvNV(unsigned int index, int count, const double* v)
    cdef void glVertexAttribs3fvNV(unsigned int index, int count, const float* v)
    cdef void glVertexAttribs3hvNV(unsigned int index, int n, const unsigned short* v)
    cdef void glVertexAttribs3svNV(unsigned int index, int count, const short* v)
    cdef void glVertexAttribs4dvNV(unsigned int index, int count, const double* v)
    cdef void glVertexAttribs4fvNV(unsigned int index, int count, const float* v)
    cdef void glVertexAttribs4hvNV(unsigned int index, int n, const unsigned short* v)
    cdef void glVertexAttribs4svNV(unsigned int index, int count, const short* v)
    cdef void glVertexAttribs4ubvNV(unsigned int index, int count, const unsigned char* v)
    cdef void glVertexBindingDivisor(unsigned int bindingindex, unsigned int divisor)
    cdef void glVertexBlendARB(int count)
    cdef void glVertexBlendEnvfATI(unsigned int pname, float param)
    cdef void glVertexBlendEnviATI(unsigned int pname, int param)
    cdef void glVertexFormatNV(int size, unsigned int type, int stride)
    cdef void glVertexP2ui(unsigned int type, unsigned int value)
    cdef void glVertexP2uiv(unsigned int type, const unsigned int* value)
    cdef void glVertexP3ui(unsigned int type, unsigned int value)
    cdef void glVertexP3uiv(unsigned int type, const unsigned int* value)
    cdef void glVertexP4ui(unsigned int type, unsigned int value)
    cdef void glVertexP4uiv(unsigned int type, const unsigned int* value)
    cdef void glVertexPointer(int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexPointerEXT(int size, unsigned int type, int stride, int count, const void* pointer)
    cdef void glVertexPointerListIBM(int size, unsigned int type, int stride, const void** pointer, int ptrstride)
    cdef void glVertexPointervINTEL(int size, unsigned int type, const void** pointer)
    cdef void glVertexStream1dATI(unsigned int stream, double x)
    cdef void glVertexStream1dvATI(unsigned int stream, const double* coords)
    cdef void glVertexStream1fATI(unsigned int stream, float x)
    cdef void glVertexStream1fvATI(unsigned int stream, const float* coords)
    cdef void glVertexStream1iATI(unsigned int stream, int x)
    cdef void glVertexStream1ivATI(unsigned int stream, const int* coords)
    cdef void glVertexStream1sATI(unsigned int stream, short x)
    cdef void glVertexStream1svATI(unsigned int stream, const short* coords)
    cdef void glVertexStream2dATI(unsigned int stream, double x, double y)
    cdef void glVertexStream2dvATI(unsigned int stream, const double* coords)
    cdef void glVertexStream2fATI(unsigned int stream, float x, float y)
    cdef void glVertexStream2fvATI(unsigned int stream, const float* coords)
    cdef void glVertexStream2iATI(unsigned int stream, int x, int y)
    cdef void glVertexStream2ivATI(unsigned int stream, const int* coords)
    cdef void glVertexStream2sATI(unsigned int stream, short x, short y)
    cdef void glVertexStream2svATI(unsigned int stream, const short* coords)
    cdef void glVertexStream3dATI(unsigned int stream, double x, double y, double z)
    cdef void glVertexStream3dvATI(unsigned int stream, const double* coords)
    cdef void glVertexStream3fATI(unsigned int stream, float x, float y, float z)
    cdef void glVertexStream3fvATI(unsigned int stream, const float* coords)
    cdef void glVertexStream3iATI(unsigned int stream, int x, int y, int z)
    cdef void glVertexStream3ivATI(unsigned int stream, const int* coords)
    cdef void glVertexStream3sATI(unsigned int stream, short x, short y, short z)
    cdef void glVertexStream3svATI(unsigned int stream, const short* coords)
    cdef void glVertexStream4dATI(unsigned int stream, double x, double y, double z, double w)
    cdef void glVertexStream4dvATI(unsigned int stream, const double* coords)
    cdef void glVertexStream4fATI(unsigned int stream, float x, float y, float z, float w)
    cdef void glVertexStream4fvATI(unsigned int stream, const float* coords)
    cdef void glVertexStream4iATI(unsigned int stream, int x, int y, int z, int w)
    cdef void glVertexStream4ivATI(unsigned int stream, const int* coords)
    cdef void glVertexStream4sATI(unsigned int stream, short x, short y, short z, short w)
    cdef void glVertexStream4svATI(unsigned int stream, const short* coords)
    cdef void glVertexWeightPointerEXT(int size, unsigned int type, int stride, const void* pointer)
    cdef void glVertexWeightfEXT(float weight)
    cdef void glVertexWeightfvEXT(const float* weight)
    cdef void glVertexWeighthNV(unsigned short weight)
    cdef void glVertexWeighthvNV(const unsigned short* weight)
    cdef GLenum glVideoCaptureNV(unsigned int video_capture_slot, unsigned int* sequence_num, uint64_t* capture_time)
    cdef void glVideoCaptureStreamParameterdvNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, const double* params)
    cdef void glVideoCaptureStreamParameterfvNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, const float* params)
    cdef void glVideoCaptureStreamParameterivNV(unsigned int video_capture_slot, unsigned int stream, unsigned int pname, const int* params)
    cdef void glViewport(int x, int y, int width, int height)
    cdef void glViewportArrayv(unsigned int first, int count, const float* v)
    cdef void glViewportIndexedf(unsigned int index, float x, float y, float w, float h)
    cdef void glViewportIndexedfv(unsigned int index, const float* v)
    cdef void glViewportPositionWScaleNV(unsigned int index, float xcoeff, float ycoeff)
    cdef void glViewportSwizzleNV(unsigned int index, unsigned int swizzlex, unsigned int swizzley, unsigned int swizzlez, unsigned int swizzlew)
    cdef void glWeightPathsNV(unsigned int resultPath, int numPaths, const unsigned int* paths, const float* weights)
    cdef void glWeightPointerARB(int size, unsigned int type, int stride, const void* pointer)
    cdef void glWeightbvARB(int size, const signed char* weights)
    cdef void glWeightdvARB(int size, const double* weights)
    cdef void glWeightfvARB(int size, const float* weights)
    cdef void glWeightivARB(int size, const int* weights)
    cdef void glWeightsvARB(int size, const short* weights)
    cdef void glWeightubvARB(int size, const unsigned char* weights)
    cdef void glWeightuivARB(int size, const unsigned int* weights)
    cdef void glWeightusvARB(int size, const unsigned short* weights)
    cdef void glWindowPos2d(double x, double y)
    cdef void glWindowPos2dARB(double x, double y)
    cdef void glWindowPos2dMESA(double x, double y)
    cdef void glWindowPos2dv(const double* v)
    cdef void glWindowPos2dvARB(const double* v)
    cdef void glWindowPos2dvMESA(const double* v)
    cdef void glWindowPos2f(float x, float y)
    cdef void glWindowPos2fARB(float x, float y)
    cdef void glWindowPos2fMESA(float x, float y)
    cdef void glWindowPos2fv(const float* v)
    cdef void glWindowPos2fvARB(const float* v)
    cdef void glWindowPos2fvMESA(const float* v)
    cdef void glWindowPos2i(int x, int y)
    cdef void glWindowPos2iARB(int x, int y)
    cdef void glWindowPos2iMESA(int x, int y)
    cdef void glWindowPos2iv(const int* v)
    cdef void glWindowPos2ivARB(const int* v)
    cdef void glWindowPos2ivMESA(const int* v)
    cdef void glWindowPos2s(short x, short y)
    cdef void glWindowPos2sARB(short x, short y)
    cdef void glWindowPos2sMESA(short x, short y)
    cdef void glWindowPos2sv(const short* v)
    cdef void glWindowPos2svARB(const short* v)
    cdef void glWindowPos2svMESA(const short* v)
    cdef void glWindowPos3d(double x, double y, double z)
    cdef void glWindowPos3dARB(double x, double y, double z)
    cdef void glWindowPos3dMESA(double x, double y, double z)
    cdef void glWindowPos3dv(const double* v)
    cdef void glWindowPos3dvARB(const double* v)
    cdef void glWindowPos3dvMESA(const double* v)
    cdef void glWindowPos3f(float x, float y, float z)
    cdef void glWindowPos3fARB(float x, float y, float z)
    cdef void glWindowPos3fMESA(float x, float y, float z)
    cdef void glWindowPos3fv(const float* v)
    cdef void glWindowPos3fvARB(const float* v)
    cdef void glWindowPos3fvMESA(const float* v)
    cdef void glWindowPos3i(int x, int y, int z)
    cdef void glWindowPos3iARB(int x, int y, int z)
    cdef void glWindowPos3iMESA(int x, int y, int z)
    cdef void glWindowPos3iv(const int* v)
    cdef void glWindowPos3ivARB(const int* v)
    cdef void glWindowPos3ivMESA(const int* v)
    cdef void glWindowPos3s(short x, short y, short z)
    cdef void glWindowPos3sARB(short x, short y, short z)
    cdef void glWindowPos3sMESA(short x, short y, short z)
    cdef void glWindowPos3sv(const short* v)
    cdef void glWindowPos3svARB(const short* v)
    cdef void glWindowPos3svMESA(const short* v)
    cdef void glWindowPos4dMESA(double x, double y, double z, double w)
    cdef void glWindowPos4dvMESA(const double* v)
    cdef void glWindowPos4fMESA(float x, float y, float z, float w)
    cdef void glWindowPos4fvMESA(const float* v)
    cdef void glWindowPos4iMESA(int x, int y, int z, int w)
    cdef void glWindowPos4ivMESA(const int* v)
    cdef void glWindowPos4sMESA(short x, short y, short z, short w)
    cdef void glWindowPos4svMESA(const short* v)
    cdef void glWindowRectanglesEXT(unsigned int mode, int count, const int* box)
    cdef void glWriteMaskEXT(unsigned int res, unsigned int _in_, unsigned int outX, unsigned int outY, unsigned int outZ, unsigned int outW)

#ENUMS >>

cdef enum VertexHintsMaskPGI:
    GL_VERTEX4_BIT_PGI
    GL_EDGEFLAG_BIT_PGI
    GL_VERTEX23_BIT_PGI
    GL_TEXCOORD1_BIT_PGI
    GL_TEXCOORD3_BIT_PGI
    GL_COLOR3_BIT_PGI
    GL_TEXCOORD2_BIT_PGI
    GL_MAT_AMBIENT_BIT_PGI
    GL_MAT_COLOR_INDEXES_BIT_PGI
    GL_MAT_DIFFUSE_BIT_PGI
    GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI
    GL_COLOR4_BIT_PGI
    GL_TEXCOORD4_BIT_PGI
    GL_INDEX_BIT_PGI
    GL_MAT_SPECULAR_BIT_PGI
    GL_NORMAL_BIT_PGI
    GL_MAT_EMISSION_BIT_PGI
    GL_MAT_SHININESS_BIT_PGI

cdef enum ContextFlagMask:
    GL_CONTEXT_FLAG_DEBUG_BIT
    GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT
    GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR
    GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB
    GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT
    GL_CONTEXT_FLAG_DEBUG_BIT_KHR

cdef enum FragmentShaderColorModMaskATI:
    GL_BIAS_BIT_ATI
    GL_COMP_BIT_ATI
    GL_NEGATE_BIT_ATI

cdef enum gl:
    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING
    GL_TEXTURE_BUFFER_OFFSET
    GL_MATRIX7_ARB
    GL_MAX_PROGRAM_GENERIC_RESULTS_NV
    GL_COLOR_ATTACHMENT1_EXT
    GL_PROGRAM_TEX_INDIRECTIONS_ARB
    GL_MULTIPLY_KHR
    GL_INVALID_FRAMEBUFFER_OPERATION_EXT
    GL_FUNC_SUBTRACT_EXT
    GL_VERTEX_ARRAY_STRIDE
    GL_VERTEX_PROGRAM_ARB
    GL_CURRENT_RASTER_DISTANCE
    GL_TEXTURE_SWIZZLE_RGBA_EXT
    GL_RGBA2
    GL_ELEMENT_ARRAY_ADDRESS_NV
    GL_NEGATIVE_X_EXT
    GL_TEXTURE7
    GL_SAMPLE_MASK_INVERT_SGIS
    GL_MAP1_VERTEX_ATTRIB4_4_NV
    GL_ATTACHED_SHADERS
    GL_DUAL_INTENSITY8_SGIS
    GL_REFLECTION_MAP_EXT
    GL_MIRROR_CLAMP_TO_EDGE_EXT
    GL_COLOR_ARRAY_TYPE_EXT
    GL_TEXTURE_MULTI_BUFFER_HINT_SGIX
    GL_IMAGE_3D
    GL_TRANSPOSE_CURRENT_MATRIX_ARB
    GL_DARKEN_KHR
    GL_ONE_EXT
    GL_YCBYCR8_422_NV
    GL_PRESENT_DURATION_NV
    GL_ALPHA_INTEGER
    GL_SUBTRACT_ARB
    GL_ALPHA32UI_EXT
    GL_INVERT_RGB_NV
    GL_TEXTURE_BINDING_2D
    GL_QUAD_LUMINANCE8_SGIS
    GL_TEXTURE11
    GL_STENCIL_BACK_FAIL
    GL_SRC_COLOR
    GL_CAVEAT_SUPPORT
    GL_IMAGE_CLASS_1_X_32
    GL_OBJECT_TYPE_ARB
    GL_TEXTURE_1D_STACK_BINDING_MESAX
    GL_MAX_ELEMENTS_VERTICES_EXT
    GL_INT_SAMPLER_BUFFER
    GL_UNSIGNED_INT64_VEC2_ARB
    GL_SAMPLER_KHR
    GL_COLOR_MATRIX
    GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV
    GL_CON_22_ATI
    GL_IMAGE_BINDING_ACCESS
    GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV
    GL_VERTEX_ATTRIB_ARRAY14_NV
    GL_INT16_VEC3_NV
    GL_UNSIGNED_SHORT_1_5_5_5_REV
    GL_COLOR_MATRIX_STACK_DEPTH_SGI
    GL_RENDERBUFFER_HEIGHT_EXT
    GL_MODELVIEW2_ARB
    GL_MAX_NAME_LENGTH
    GL_UNIFORM_BUFFER_START
    GL_SIGNED_RGBA_NV
    GL_COLOR_TABLE_WIDTH
    GL_SAMPLE_ALPHA_TO_ONE
    GL_UTF8_NV
    GL_TEXTURE25_ARB
    GL_POST_COLOR_MATRIX_RED_SCALE
    GL_INTENSITY32I_EXT
    GL_POST_CONVOLUTION_ALPHA_BIAS_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR
    GL_DEBUG_SEVERITY_NOTIFICATION_KHR
    GL_TRIANGLE_STRIP_ADJACENCY_EXT
    GL_PACK_ROW_LENGTH
    GL_TANGENT_ARRAY_STRIDE_EXT
    GL_GLOBAL_ALPHA_FACTOR_SUN
    GL_SPRITE_OBJECT_ALIGNED_SGIX
    GL_INTERNALFORMAT_SHARED_SIZE
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
    GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV
    GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE
    GL_TEXTURE_COMPRESSED_IMAGE_SIZE
    GL_MAX_GEOMETRY_OUTPUT_VERTICES
    GL_RGB_FLOAT32_APPLE
    GL_MAX_COLOR_ATTACHMENTS_EXT
    GL_REG_20_ATI
    GL_BACK_PRIMARY_COLOR_NV
    GL_STENCIL_INDEX16
    GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB
    GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB
    GL_MODELVIEW28_ARB
    GL_MAX_CONVOLUTION_WIDTH
    GL_HALF_BIAS_NORMAL_NV
    GL_PIXEL_MAP_I_TO_R_SIZE
    GL_GENERATE_MIPMAP
    GL_UNPACK_COMPRESSED_BLOCK_DEPTH
    GL_COLOR_TABLE_WIDTH_SGI
    GL_VERTEX_ARRAY_EXT
    GL_SPARE0_PLUS_SECONDARY_COLOR_NV
    GL_NOTEQUAL
    GL_MIN_PROGRAM_TEXEL_OFFSET_NV
    GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT
    GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV
    GL_INT_SAMPLER_3D_EXT
    GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV
    GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV
    GL_COLOR_INDEX16_EXT
    GL_TEXTURE_CUBE_MAP_POSITIVE_X
    GL_T4F_V4F
    GL_COLOR_ATTACHMENT1
    GL_INVARIANT_VALUE_EXT
    GL_OP_RECIP_EXT
    GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV
    GL_CON_23_ATI
    GL_MATRIX6_NV
    GL_SMOOTH_POINT_SIZE_GRANULARITY
    GL_T2F_N3F_V3F
    GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB
    GL_COLOR_INDEX2_EXT
    GL_SWIZZLE_STQ_ATI
    GL_TEXTURE_2D_BINDING_EXT
    GL_TANGENT_ARRAY_POINTER_EXT
    GL_FRONT_LEFT
    GL_OP_NEGATE_EXT
    GL_FRAGMENT_DEPTH_EXT
    GL_DUAL_LUMINANCE_ALPHA8_SGIS
    GL_RGB32F_ARB
    GL_TEXTURE_1D_ARRAY_EXT
    GL_COEFF
    GL_CLIP_PLANE5
    GL_CLIP_DISTANCE7
    GL_TEXTURE_SWIZZLE_RGBA
    GL_UNSIGNED_INT_SAMPLER_3D
    GL_TRANSFORM_FEEDBACK
    GL_FRAGMENT_LIGHT7_SGIX
    GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX
    GL_FRAGMENT_TEXTURE
    GL_DISCARD_NV
    GL_COLOR_ATTACHMENT7
    GL_POINT_SIZE_RANGE
    GL_FRAMEBUFFER_DEFAULT_HEIGHT
    GL_COMPRESSED_RGBA_ASTC_4x4_KHR
    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN
    GL_OUTPUT_TEXTURE_COORD31_EXT
    GL_DYNAMIC_DRAW_ARB
    GL_MATRIX_STRIDE
    GL_SIGNED_INTENSITY8_NV
    GL_TEXTURE27_ARB
    GL_PATH_STROKE_COVER_MODE_NV
    GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS
    GL_PARAMETER_BUFFER_ARB
    GL_EDGE_FLAG_ARRAY_POINTER
    GL_RGB5_EXT
    GL_BLUE_INTEGER_EXT
    GL_MAX_UNIFORM_BLOCK_SIZE
    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW
    GL_QUERY_WAIT_INVERTED
    GL_RGBA8
    GL_TEXTURE1_ARB
    GL_DEPTH_STENCIL
    GL_VIEW_CLASS_96_BITS
    GL_DEPTH_WRITEMASK
    GL_SHADER_BINARY_FORMATS
    GL_TRANSFORM_FEEDBACK_BUFFER_MODE
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS
    GL_FOG_COORD_ARRAY_STRIDE
    GL_MINMAX
    GL_MAX_SHADER_STORAGE_BLOCK_SIZE
    GL_QUERY_ALL_EVENT_BITS_AMD
    GL_BLEND_EQUATION_RGB_EXT
    GL_COMBINER6_NV
    GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV
    GL_MAX_DEFORMATION_ORDER_SGIX
    GL_ALLOW_DRAW_FRG_HINT_PGI
    GL_TEXTURE_BUFFER
    GL_MAP2_VERTEX_ATTRIB10_4_NV
    GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT
    GL_VIDEO_BUFFER_NV
    GL_UNSIGNED_INT_IMAGE_1D
    GL_CONVOLUTION_FILTER_BIAS_EXT
    GL_RGB8_SNORM
    GL_COLOR_ARRAY_LIST_IBM
    GL_TEXTURE_MEMORY_LAYOUT_INTEL
    GL_DEPTH_COMPONENT24_ARB
    GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB
    GL_PACK_IMAGE_DEPTH_SGIS
    GL_FRAGMENT_DEPTH
    GL_PROGRAM_ATTRIB_COMPONENTS_NV
    GL_CND_ATI
    GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL
    GL_FRAMEBUFFER_UNSUPPORTED_EXT
    GL_MULTISAMPLE
    GL_LOCAL_CONSTANT_DATATYPE_EXT
    GL_HISTOGRAM_LUMINANCE_SIZE
    GL_OBJECT_TYPE
    GL_RGB10
    GL_BACK
    GL_SRGB_READ
    GL_DEPTH_ATTACHMENT_EXT
    GL_INDEX_ARRAY_BUFFER_BINDING
    GL_VERTEX_ATTRIB_ARRAY15_NV
    GL_MAX_GENERAL_COMBINERS_NV
    GL_POST_COLOR_MATRIX_GREEN_BIAS
    GL_DRAW_BUFFER1_ARB
    GL_CLAMP_TO_BORDER
    GL_OUTPUT_TEXTURE_COORD6_EXT
    GL_CURRENT_VERTEX_ATTRIB
    GL_TESS_CONTROL_SHADER_PATCHES_ARB
    GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION
    GL_TEXTURE_LOD_BIAS_EXT
    GL_TEXTURE_IMAGE_FORMAT
    GL_UNSIGNED_SHORT_8_8_REV_MESA
    GL_DISTANCE_ATTENUATION_EXT
    GL_INTENSITY_EXT
    GL_SECONDARY_COLOR_ARRAY_SIZE
    GL_LIST_INDEX
    GL_EVAL_VERTEX_ATTRIB9_NV
    GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS
    GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    GL_PURGEABLE_APPLE
    GL_HISTOGRAM_ALPHA_SIZE
    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB
    GL_TRANSFORM_FEEDBACK_ATTRIBS_NV
    GL_LOGIC_OP_MODE
    GL_MAX_FOG_FUNC_POINTS_SGIS
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE
    GL_COLOR_ATTACHMENT3_EXT
    GL_DEBUG_TYPE_OTHER_ARB
    GL_COMPRESSED_SLUMINANCE_ALPHA_EXT
    GL_IMAGE_BINDING_LEVEL_EXT
    GL_RGB_FLOAT32_ATI
    GL_TRANSPOSE_AFFINE_3D_NV
    GL_INTERNALFORMAT_RED_SIZE
    GL_VERTEX_ARRAY_RANGE_LENGTH_NV
    GL_CON_26_ATI
    GL_PACK_CMYK_HINT_EXT
    GL_MATRIX0_NV
    GL_TRANSPOSE_NV
    GL_INDEX_LOGIC_OP
    GL_VARIANT_DATATYPE_EXT
    GL_QUERY
    GL_PIXEL_TILE_GRID_WIDTH_SGIX
    GL_FLOAT
    GL_MAX_DRAW_BUFFERS
    GL_PIXEL_SUBSAMPLE_4242_SGIX
    GL_PROGRAM_ADDRESS_REGISTERS_ARB
    GL_OR_INVERTED
    GL_LUMINANCE4
    GL_RGBA16I
    GL_LINEAR_DETAIL_COLOR_SGIS
    GL_MINMAX_SINK_EXT
    GL_UNSIGNED_INT_ATOMIC_COUNTER
    GL_PIXEL_UNPACK_BUFFER_ARB
    GL_COLOR_TABLE_SCALE_SGI
    GL_MAX_PROGRAM_RESULT_COMPONENTS_NV
    GL_FRAGMENT_LIGHT3_SGIX
    GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB
    GL_IMPLEMENTATION_COLOR_READ_TYPE_OES
    GL_STACK_OVERFLOW
    GL_SIGNED_RGBA8_NV
    GL_MODELVIEW_STACK_DEPTH
    GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV
    GL_TEXTURE_COORD_ARRAY_LIST_IBM
    GL_SECONDARY_COLOR_ARRAY_EXT
    GL_COLOR_ATTACHMENT4_EXT
    GL_QUERY_BY_REGION_NO_WAIT_NV
    GL_RENDERBUFFER_BLUE_SIZE
    GL_RG16I
    GL_LUMINANCE8
    GL_TEXTURE13_ARB
    GL_VERTEX_ARRAY_TYPE
    GL_LINE_STRIP
    GL_RGBA4_EXT
    GL_INTENSITY12_EXT
    GL_MATRIX0_ARB
    GL_LUMINANCE12_ALPHA4_EXT
    GL_SPHERE_MAP
    GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB
    GL_MINMAX_FORMAT_EXT
    GL_COLOR_ATTACHMENT4
    GL_VERTEX_ARRAY_BUFFER_BINDING_ARB
    GL_PALETTE4_R5_G6_B5_OES
    GL_FEEDBACK_BUFFER_TYPE
    GL_AUX_BUFFERS
    GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT
    GL_BLEND_SRC_ALPHA_EXT
    GL_RGB4_S3TC
    GL_PATH_FILL_MODE_NV
    GL_HARDLIGHT_NV
    GL_REFERENCED_BY_TESS_CONTROL_SHADER
    GL_SAMPLE_MASK
    GL_PIXEL_MAP_R_TO_R
    GL_RGB565
    GL_FIXED_OES
    GL_4PASS_3_SGIS
    GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV
    GL_ABGR_EXT
    GL_MATRIX_INDEX_ARRAY_SIZE_ARB
    GL_TEXTURE_BORDER
    GL_COORD_REPLACE
    GL_INNOCENT_CONTEXT_RESET
    GL_STENCIL_REF
    GL_COLOR_ATTACHMENT31
    GL_GENERATE_MIPMAP_HINT
    GL_MULTISAMPLES_NV
    GL_FLOAT_RGB16_NV
    GL_IMAGE_CLASS_1_X_8
    GL_SAMPLER_2D_ARRAY_SHADOW
    GL_ALPHA
    GL_RENDERBUFFER_FREE_MEMORY_ATI
    GL_FOG_COORDINATE_ARRAY_TYPE
    GL_DEBUG_SOURCE_API_KHR
    GL_PROXY_TEXTURE_RECTANGLE_NV
    GL_FORMAT_SUBSAMPLE_244_244_OML
    GL_DEBUG_TYPE_PERFORMANCE_KHR
    GL_VOLATILE_APPLE
    GL_IMAGE_TRANSFORM_2D_HP
    GL_LINE_STRIP_ADJACENCY_EXT
    GL_COLOR_ATTACHMENT30
    GL_MAP1_COLOR_4
    GL_RGBA8_SNORM
    GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER
    GL_PIXEL_TRANSFORM_2D_MATRIX_EXT
    GL_PACK_RESAMPLE_SGIX
    GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT
    GL_INDEX_ARRAY_EXT
    GL_MAP1_VERTEX_ATTRIB0_4_NV
    GL_FIELDS_NV
    GL_COVERAGE_MODULATION_NV
    GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS
    GL_FRAGMENT_INPUT_NV
    GL_TEXTURE_CLIPMAP_DEPTH_SGIX
    GL_REPEAT
    GL_INTENSITY8_SNORM
    GL_ASYNC_HISTOGRAM_SGIX
    GL_PALETTE8_RGBA4_OES
    GL_INTERLACE_READ_OML
    GL_POST_COLOR_MATRIX_COLOR_TABLE
    GL_POINT
    GL_MOVE_TO_CONTINUES_NV
    GL_PROXY_TEXTURE_1D
    GL_TEXTURE_BORDER_VALUES_NV
    GL_MAX_CUBE_MAP_TEXTURE_SIZE
    GL_COMPUTE_TEXTURE
    GL_TEXTURE_WRAP_R_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR
    GL_SPRITE_SGIX
    GL_UNPACK_COMPRESSED_BLOCK_SIZE
    GL_DEBUG_SOURCE_OTHER
    GL_MAX_TEXTURE_BUFFER_SIZE
    GL_LINES_ADJACENCY
    GL_UNPACK_IMAGE_DEPTH_SGIS
    GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR
    GL_MAJOR_VERSION
    GL_IMAGE_1D_EXT
    GL_DUAL_TEXTURE_SELECT_SGIS
    GL_POINT_SPRITE_NV
    GL_MAP2_VERTEX_ATTRIB4_4_NV
    GL_UNPACK_COMPRESSED_BLOCK_WIDTH
    GL_TEXTURE_COORD_ARRAY_STRIDE
    GL_POST_COLOR_MATRIX_ALPHA_BIAS
    GL_CON_9_ATI
    GL_NORMAL_ARRAY_STRIDE_EXT
    GL_SYNC_CONDITION
    GL_BUFFER_OBJECT_APPLE
    GL_QUERY_COUNTER_BITS
    GL_SAMPLE_ALPHA_TO_MASK_SGIS
    GL_PATH_COVER_DEPTH_FUNC_NV
    GL_OUTPUT_TEXTURE_COORD22_EXT
    GL_HALF_BIAS_NEGATE_NV
    GL_TEXTURE16
    GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV
    GL_DRAW_BUFFER1
    GL_PROGRAM_BINARY_LENGTH
    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR
    GL_DRAW_BUFFER7_ARB
    GL_MAP1_TEXTURE_COORD_2
    GL_IMAGE_ROTATE_ORIGIN_X_HP
    GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL
    GL_TEXTURE_BUFFER_BINDING
    GL_4PASS_0_SGIS
    GL_PROVOKING_VERTEX
    GL_FRAMEBUFFER_RENDERABLE
    GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX
    GL_REPLACE_VALUE_AMD
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS
    GL_FORMAT_SUBSAMPLE_24_24_OML
    GL_MAX_COMBINED_DIMENSIONS
    GL_DEBUG_LOGGED_MESSAGES
    GL_IMAGE_CUBE_EXT
    GL_VIEW_CLASS_64_BITS
    GL_SLUMINANCE8
    GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI
    GL_INT_SAMPLER_BUFFER_EXT
    GL_CLEAR_TEXTURE
    GL_INTENSITY4
    GL_FLOAT16_VEC3_NV
    GL_LIST_MODE
    GL_UNIFORM_SIZE
    GL_SAMPLES_ARB
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    GL_PIXEL_TILE_CACHE_INCREMENT_SGIX
    GL_VERTEX_PRECLIP_HINT_SGIX
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR
    GL_MEDIUM_FLOAT
    GL_TEXTURE_COLOR_SAMPLES_NV
    GL_POST_CONVOLUTION_GREEN_SCALE
    GL_UNSIGNED_INT_2_10_10_10_REV
    GL_LINE_STRIP_ADJACENCY
    GL_RENDERBUFFER
    GL_REG_2_ATI
    GL_MAX_RECTANGLE_TEXTURE_SIZE
    GL_ALPHA_SNORM
    GL_OFFSET_TEXTURE_2D_SCALE_NV
    GL_DRAW_BUFFER13_ARB
    GL_COMBINER3_NV
    GL_1PASS_SGIS
    GL_HISTOGRAM_BLUE_SIZE_EXT
    GL_POST_CONVOLUTION_BLUE_SCALE_EXT
    GL_CLIP_DISTANCE5
    GL_LEFT
    GL_MAP1_VERTEX_ATTRIB15_4_NV
    GL_TEXTURE_2D_MULTISAMPLE
    GL_NOR
    GL_LUMINANCE16_EXT
    GL_MODELVIEW27_ARB
    GL_VARIANT_EXT
    GL_IMAGE_CLASS_11_11_10
    GL_ELEMENT_ARRAY_ATI
    GL_AVERAGE_HP
    GL_IMAGE_TEXEL_SIZE
    GL_VIEW_COMPATIBILITY_CLASS
    GL_POINT_SIZE
    GL_FONT_UNAVAILABLE_NV
    GL_MODELVIEW15_ARB
    GL_COLOR_TABLE_ALPHA_SIZE_SGI
    GL_COLOR_ATTACHMENT6
    GL_PROGRAM_STRING_NV
    GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT
    GL_MAP2_TEXTURE_COORD_1
    GL_MAX_VERTEX_STREAMS_ATI
    GL_RENDERBUFFER_BLUE_SIZE_EXT
    GL_TEXTURE_VIEW_NUM_LEVELS
    GL_TEXTURE_IMMUTABLE_LEVELS
    GL_MATRIX9_ARB
    GL_TEXTURE_COMPRESSED_ARB
    GL_MAP_ATTRIB_V_ORDER_NV
    GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI
    GL_COLOR_TABLE_SCALE
    GL_RENDER_MODE
    GL_STANDARD_FONT_FORMAT_NV
    GL_MAP1_VERTEX_ATTRIB11_4_NV
    GL_UNPACK_LSB_FIRST
    GL_IMAGE_ROTATE_ORIGIN_Y_HP
    GL_LINE_STIPPLE_REPEAT
    GL_UNKNOWN_CONTEXT_RESET_ARB
    GL_LOSE_CONTEXT_ON_RESET_ARB
    GL_TEXTURE12
    GL_PROGRAM_SEPARABLE_EXT
    GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL
    GL_IUI_N3F_V2F_EXT
    GL_TEXTURE_IMAGE_TYPE
    GL_TEXTURE_MAG_FILTER
    GL_MAP1_TANGENT_EXT
    GL_TEXTURE_INTERNAL_FORMAT
    GL_NEGATIVE_Y_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER
    GL_MAX_DEBUG_MESSAGE_LENGTH_ARB
    GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB
    GL_FLOAT_RGBA_NV
    GL_DEBUG_CATEGORY_API_ERROR_AMD
    GL_TRANSLATE_2D_NV
    GL_UNSIGNED_SHORT_5_6_5_REV
    GL_TEXTURE10
    GL_CURRENT_QUERY
    GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV
    GL_VERTEX_ATTRIB_ARRAY8_NV
    GL_EXCLUSIVE_EXT
    GL_SKIP_DECODE_EXT
    GL_DEBUG_CATEGORY_DEPRECATION_AMD
    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE
    GL_OBJECT_ACTIVE_ATTRIBUTES_ARB
    GL_ATOMIC_COUNTER_BUFFER_SIZE
    GL_BGR_EXT
    GL_RESCALE_NORMAL
    GL_COLOR_ATTACHMENT25
    GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE
    GL_STORAGE_PRIVATE_APPLE
    GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB
    GL_COMPRESSED_RGBA_ASTC_8x5_KHR
    GL_MIN_SPARSE_LEVEL_AMD
    GL_MAX_VIEWPORT_DIMS
    GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    GL_MAX_CLIPMAP_DEPTH_SGIX
    GL_CON_21_ATI
    GL_CLAMP_TO_BORDER_ARB
    GL_CLAMP_TO_EDGE_SGIS
    GL_SAMPLER_2D_ARRAY_EXT
    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR
    GL_COLOR_ARRAY_EXT
    GL_MAX_TEXTURE_IMAGE_UNITS_NV
    GL_FOG_COORD_ARRAY_ADDRESS_NV
    GL_REG_18_ATI
    GL_LUMINANCE16F_ARB
    GL_TEXTURE_BLUE_TYPE
    GL_TEXTURE21_ARB
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT
    GL_SAMPLER_1D_ARRAY_EXT
    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB
    GL_SMOOTH_LINE_WIDTH_RANGE
    GL_OBJECT_BUFFER_USAGE_ATI
    GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB
    GL_OCCLUSION_QUERY_EVENT_MASK_AMD
    GL_TRANSPOSE_AFFINE_2D_NV
    GL_PROXY_COLOR_TABLE_SGI
    GL_VIEWPORT_INDEX_PROVOKING_VERTEX
    GL_LUMINANCE_FLOAT32_APPLE
    GL_PROXY_TEXTURE_2D_EXT
    GL_PIXEL_MAP_I_TO_G_SIZE
    GL_ALPHA_TEST_REF
    GL_MAX_FRAMEBUFFER_WIDTH
    GL_PALETTE8_RGB8_OES
    GL_OP_FRAC_EXT
    GL_VIEWPORT_SWIZZLE_POSITIVE_Y_NV
    GL_LUMINANCE8_ALPHA8
    GL_POINT_DISTANCE_ATTENUATION
    GL_SAMPLES_SGIS
    GL_MAX_ELEMENTS_VERTICES
    GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT
    GL_TEXTURE_MAX_LOD
    GL_INVERTED_SCREEN_W_REND
    GL_REG_3_ATI
    GL_OUTPUT_TEXTURE_COORD4_EXT
    GL_VERTEX_BINDING_DIVISOR
    GL_VERTEX_ARRAY_POINTER
    GL_MATRIX_INDEX_ARRAY_STRIDE_ARB
    GL_TEXTURE_MAX_LOD_SGIS
    GL_PACK_SKIP_ROWS
    GL_GUILTY_CONTEXT_RESET_ARB
    GL_INSTRUMENT_MEASUREMENTS_SGIX
    GL_SRC_OVER_NV
    GL_MODELVIEW_PROJECTION_NV
    GL_COMBINER_AB_DOT_PRODUCT_NV
    GL_COMPRESSED_TEXTURE_FORMATS
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT
    GL_RGB16_SNORM
    GL_MODELVIEW9_ARB
    GL_MAX_PROGRAM_TEXEL_OFFSET
    GL_EVAL_VERTEX_ATTRIB3_NV
    GL_MAP1_VERTEX_ATTRIB3_4_NV
    GL_EDGE_FLAG_ARRAY_ADDRESS_NV
    GL_LO_BIAS_NV
    GL_CURRENT_RASTER_NORMAL_SGIX
    GL_ONE_MINUS_CONSTANT_COLOR_EXT
    GL_4PASS_2_EXT
    GL_DETAIL_TEXTURE_MODE_SGIS
    GL_PIXEL_UNPACK_BUFFER_BINDING_ARB
    GL_SAMPLER_2D_ARRAY_SHADOW_EXT
    GL_COMPRESSED_RGB_FXT1_3DFX
    GL_DOUBLE_VEC3_EXT
    GL_EVAL_VERTEX_ATTRIB11_NV
    GL_CON_30_ATI
    GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV
    GL_PROGRAM_RESIDENT_NV
    GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB
    GL_INT_IMAGE_3D
    GL_DRAW_BUFFER5_ARB
    GL_SCALED_RESOLVE_FASTEST_EXT
    GL_ATOMIC_COUNTER_BUFFER_START
    GL_LINE_SMOOTH_HINT
    GL_TEXTURE_MATERIAL_PARAMETER_EXT
    GL_PIXEL_TEX_GEN_SGIX
    GL_VERTEX_ATTRIB_ARRAY6_NV
    GL_GREEN
    GL_RELEASED_APPLE
    GL_CURRENT_RASTER_INDEX
    GL_TEXTURE_SWIZZLE_G_EXT
    GL_TEXTURE_MATERIAL_FACE_EXT
    GL_PACK_SWAP_BYTES
    GL_CONJOINT_NV
    GL_SAMPLE_PATTERN_EXT
    GL_RENDERBUFFER_EXT
    GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE
    GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET
    GL_OFFSET_TEXTURE_SCALE_NV
    GL_IMAGE_CLASS_2_X_8
    GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB
    GL_MAX_PROGRAM_PARAMETERS_ARB
    GL_DEBUG_SOURCE_API
    GL_MAX_TEXTURE_UNITS_ARB
    GL_XOR
    GL_LINEARLIGHT_NV
    GL_TRIANGLE_LIST_SUN
    GL_REG_17_ATI
    GL_VERTEX_ID_SWIZZLE_AMD
    GL_OBJECT_ATTACHED_OBJECTS_ARB
    GL_TEXTURE14_ARB
    GL_RGB_RAW_422_APPLE
    GL_2PASS_1_EXT
    GL_INTENSITY8_EXT
    GL_UNIFORM_BUFFER_ADDRESS_NV
    GL_CURRENT_TANGENT_EXT
    GL_MAX_VARYING_COMPONENTS_EXT
    GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES
    GL_COMBINER_BIAS_NV
    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS
    GL_OUTPUT_TEXTURE_COORD1_EXT
    GL_CULL_FRAGMENT_NV
    GL_R16I
    GL_PATH_TERMINAL_END_CAP_NV
    GL_VIEWPORT_SWIZZLE_POSITIVE_Z_NV
    GL_SIGNED_RGB8_NV
    GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE
    GL_MAX_IMAGE_UNITS_EXT
    GL_SCALE_BY_TWO_NV
    GL_PIXEL_CUBIC_WEIGHT_EXT
    GL_FOG_INDEX
    GL_RGBA32F
    GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS
    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS
    GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS
    GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT
    GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT
    GL_TEXTURE8_ARB
    GL_DEPTH_TEST
    GL_COLOR_MATRIX_SGI
    GL_UNSIGNED_INT_VEC2
    GL_SLUMINANCE_ALPHA_EXT
    GL_PROGRAMMABLE_SAMPLE_LOCATION_NV
    GL_UNSIGNED_INT_SAMPLER_BUFFER
    GL_PATCH_DEFAULT_INNER_LEVEL
    GL_SRC_NV
    GL_UNSIGNED_SHORT_8_8_REV_APPLE
    GL_ACTIVE_SUBROUTINE_MAX_LENGTH
    GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD
    GL_R32I
    GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT
    GL_MAP1_VERTEX_ATTRIB1_4_NV
    GL_RGB16_EXT
    GL_OVERLAY_KHR
    GL_OP_FLOOR_EXT
    GL_CONST_EYE_NV
    GL_TEXTURE4_ARB
    GL_LUMINANCE_ALPHA_FLOAT16_APPLE
    GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB
    GL_PERFQUERY_FLUSH_INTEL
    GL_YCRCB_SGIX
    GL_FLOAT_RG_NV
    GL_MAP2_GRID_SEGMENTS
    GL_FLOAT_RGBA_MODE_NV
    GL_CONVOLUTION_BORDER_MODE_EXT
    GL_CLIPPING_INPUT_PRIMITIVES_ARB
    GL_DOUBLE_MAT4
    GL_INDEX_ARRAY_POINTER
    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV
    GL_TABLE_TOO_LARGE_EXT
    GL_OUTPUT_COLOR1_EXT
    GL_DRAW_BUFFER2_ARB
    GL_ACTIVE_PROGRAM_EXT
    GL_MODELVIEW26_ARB
    GL_MAX_SAMPLES_EXT
    GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB
    GL_MAX_COMBINED_UNIFORM_BLOCKS
    GL_WEIGHT_ARRAY_STRIDE_ARB
    GL_ACTIVE_TEXTURE_ARB
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X
    GL_MAX_COLOR_ATTACHMENTS
    GL_FOG_COORD_ARRAY_TYPE
    GL_QUERY_WAIT
    GL_TRANSFORM_FEEDBACK_VARYINGS_EXT
    GL_PACK_LSB_FIRST
    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT
    GL_DOT3_RGBA
    GL_COMPRESSED_R11_EAC
    GL_3_BYTES_NV
    GL_PATH_GEN_MODE_NV
    GL_VIEWPORT_SWIZZLE_NEGATIVE_Y_NV
    GL_SWIZZLE_STRQ_DQ_ATI
    GL_TEXTURE_SWIZZLE_B_EXT
    GL_DOT_PRODUCT_TEXTURE_3D_NV
    GL_STENCIL_CLEAR_VALUE
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT
    GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
    GL_UNSIGNALED
    GL_RESCALE_NORMAL_EXT
    GL_FLOAT_R32_NV
    GL_TEXTURE_1D
    GL_INVERT_OVG_NV
    GL_MAX_SHININESS_NV
    GL_STRICT_LIGHTING_HINT_PGI
    GL_IMAGE_BINDING_ACCESS_EXT
    GL_EXP
    GL_COLOR_FLOAT_APPLE
    GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE
    GL_CURRENT_MATRIX_STACK_DEPTH_ARB
    GL_ACTIVE_VARYINGS_NV
    GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV
    GL_MAX_VERTEX_HINT_PGI
    GL_IUI_V2F_EXT
    GL_REG_11_ATI
    GL_LUMINANCE32F_ARB
    GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV
    GL_TEXTURE_COMPARE_FUNC_ARB
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER
    GL_MAX_CULL_DISTANCES
    GL_TRIANGLES
    GL_RG32I
    GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT
    GL_MODELVIEW21_ARB
    GL_QUERY_BUFFER_BINDING_AMD
    GL_SRGB8_EXT
    GL_UNSIGNED_INT_VEC4_EXT
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL
    GL_CON_29_ATI
    GL_SURFACE_REGISTERED_NV
    GL_MIN_SAMPLE_SHADING_VALUE
    GL_VERTEX_ATTRIB_ARRAY_ENABLED
    GL_SHADER_KHR
    GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT
    GL_TEXTURE_COORD_ARRAY_LENGTH_NV
    GL_LINEAR_SHARPEN_ALPHA_SGIS
    GL_BACK_LEFT
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE
    GL_NO_RESET_NOTIFICATION
    GL_FLOAT16_VEC4_NV
    GL_SIGNED_LUMINANCE8_NV
    GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL
    GL_INDEX_ARRAY_STRIDE_EXT
    GL_TEXTURE_LIGHT_EXT
    GL_CON_1_ATI
    GL_COLOR_RENDERABLE
    GL_STENCIL_BACK_FUNC_ATI
    GL_UNSIGNED_INT_8_8_8_8
    GL_DEPTH
    GL_MITER_REVERT_NV
    GL_OP_MADD_EXT
    GL_DEPENDENT_AR_TEXTURE_2D_NV
    GL_INVALID_FRAMEBUFFER_OPERATION
    GL_RESAMPLE_ZERO_FILL_SGIX
    GL_RGB5
    GL_UNSIGNED_INT_10F_11F_11F_REV_EXT
    GL_UNSIGNED_INT64_VEC2_NV
    GL_ONE_MINUS_CONSTANT_ALPHA_EXT
    GL_SHADER_STORAGE_BLOCK
    GL_DRAW_BUFFER15_ARB
    GL_SRC_ALPHA
    GL_ALPHA_MIN_CLAMP_INGR
    GL_UNSIGNED_INT_8_8_S8_S8_REV_NV
    GL_IMAGE_BINDING_LAYERED
    GL_EMBOSS_LIGHT_NV
    GL_GEOMETRY_SHADER
    GL_PRIMITIVES_GENERATED
    GL_INDEX_CLEAR_VALUE
    GL_RENDERBUFFER_ALPHA_SIZE
    GL_PROGRAM_PIPELINE
    GL_IMAGE_CLASS_10_10_10_2
    GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS
    GL_RGB9_E5_EXT
    GL_PROGRAM_MATRIX_STACK_DEPTH_EXT
    GL_HSL_HUE_NV
    GL_SCALE_BY_ONE_HALF_NV
    GL_UNSIGNED_INT_24_8_EXT
    GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV
    GL_COLOR_ARRAY_BUFFER_BINDING_ARB
    GL_SAMPLES
    GL_RED_BIAS
    GL_R8
    GL_COMPRESSED_RGBA8_ETC2_EAC
    GL_STENCIL_INDEX4
    GL_STATIC_COPY_ARB
    GL_SAMPLE_LOCATION_ARB
    GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV
    GL_PALETTE8_RGB5_A1_OES
    GL_AFFINE_3D_NV
    GL_TEXTURE_COMPRESSED
    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS
    GL_RG8_SNORM
    GL_CON_17_ATI
    GL_MAX_VERTEX_VARYING_COMPONENTS_ARB
    GL_TEXTURE6
    GL_CON_8_ATI
    GL_ACTIVE_RESOURCES
    GL_LINEAR_SHARPEN_COLOR_SGIS
    GL_NEGATIVE_ONE_TO_ONE
    GL_INDEX_TEST_FUNC_EXT
    GL_COMPRESSED_RED
    GL_TRACK_MATRIX_NV
    GL_Y_EXT
    GL_TEXTURE30
    GL_ALPHA4
    GL_MAX_TESS_CONTROL_INPUT_COMPONENTS
    GL_GEOMETRY_SUBROUTINE
    GL_QUERY_NO_WAIT_NV
    GL_CLIP_FAR_HINT_PGI
    GL_COMBINER_AB_OUTPUT_NV
    GL_COMBINER5_NV
    GL_DEPTH_SAMPLES_NV
    GL_ATOMIC_COUNTER_BUFFER
    GL_CLIP_PLANE3
    GL_INT64_VEC3_ARB
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV
    GL_RGB8I
    GL_SAMPLE_COVERAGE_ARB
    GL_UNSIGNED_INT64_AMD
    GL_HALF_APPLE
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS
    GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    GL_UNSIGNED_INT_IMAGE_3D_EXT
    GL_NORMAL_MAP_NV
    GL_LAYER_NV
    GL_MINMAX_SINK
    GL_DRAW_BUFFER10_ARB
    GL_MAX_FRAMEZOOM_FACTOR_SGIX
    GL_COLOR_MATERIAL_FACE
    GL_TEXTURE_LUMINANCE_SIZE
    GL_CURRENT_INDEX
    GL_BLEND
    GL_CLAMP
    GL_IUI_N3F_V3F_EXT
    GL_PIXEL_COUNTER_BITS_NV
    GL_IMAGE_2D_RECT_EXT
    GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB
    GL_WAIT_FAILED
    GL_2_BYTES_NV
    GL_COLOR_ATTACHMENT15
    GL_CLIP_DEPTH_MODE
    GL_INDEX_MATERIAL_FACE_EXT
    GL_LUMINANCE_ALPHA_INTEGER_EXT
    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
    GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI
    GL_FRAMEBUFFER_UNSUPPORTED
    GL_PACK_SKIP_IMAGES
    GL_LINE_WIDTH
    GL_MAX_ASYNC_TEX_IMAGE_SGIX
    GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB
    GL_ALLOW_DRAW_WIN_HINT_PGI
    GL_WINDOW_RECTANGLE_EXT
    GL_DEPTH_TEXTURE_MODE
    GL_LUMINANCE_ALPHA16UI_EXT
    GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY
    GL_OP_CROSS_PRODUCT_EXT
    GL_RENDERBUFFER_COVERAGE_SAMPLES_NV
    GL_TEXTURE_LO_SIZE_NV
    GL_PRIMITIVE_RESTART_FIXED_INDEX
    GL_EVAL_VERTEX_ATTRIB5_NV
    GL_INDEX_SHIFT
    GL_CONSERVATIVE_RASTER_DILATE_RANGE_NV
    GL_TESSELLATION_FACTOR_AMD
    GL_DRAW_BUFFER13
    GL_ALPHA8_SNORM
    GL_MATRIX28_ARB
    GL_FULL_RANGE_EXT
    GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
    GL_COLOR_ARRAY_SIZE_EXT
    GL_COLOR_ATTACHMENT11_EXT
    GL_UNSIGNED_INT64_VEC4_NV
    GL_COMPRESSED_RGBA_ASTC_10x8_KHR
    GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL
    GL_RESAMPLE_DECIMATE_SGIX
    GL_NAME_STACK_DEPTH
    GL_TEXTURE18
    GL_STENCIL_COMPONENTS
    GL_SIGNED_NORMALIZED
    GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE
    GL_REG_23_ATI
    GL_INT_IMAGE_BUFFER_EXT
    GL_TEXTURE23_ARB
    GL_FUNC_REVERSE_SUBTRACT
    GL_OCCLUSION_TEST_HP
    GL_DU8DV8_ATI
    GL_MATRIX_INDEX_ARRAY_TYPE_ARB
    GL_FOG_FUNC_POINTS_SGIS
    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE
    GL_READ_FRAMEBUFFER_BINDING_EXT
    GL_PROGRAM_ERROR_POSITION_ARB
    GL_OUTPUT_TEXTURE_COORD9_EXT
    GL_MAX_DEBUG_GROUP_STACK_DEPTH_KHR
    GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV
    GL_DEPTH_BOUNDS_TEST_EXT
    GL_MAX_ACTIVE_LIGHTS_SGIX
    GL_PROGRAM_NATIVE_ATTRIBS_ARB
    GL_CONVOLUTION_WIDTH
    GL_TEXTURE_BINDING_CUBE_MAP
    GL_TEXTURE_PRE_SPECULAR_HP
    GL_POST_CONVOLUTION_ALPHA_SCALE
    GL_DOUBLE_MAT3x4
    GL_RENDERER
    GL_TEXTURE25
    GL_LUMINANCE6_ALPHA2_EXT
    GL_LINE_STRIP_ADJACENCY_ARB
    GL_LINEAR_MIPMAP_LINEAR
    GL_VIEW_CLASS_BPTC_UNORM
    GL_BGRA_EXT
    GL_TEXTURE_RANGE_LENGTH_APPLE
    GL_FIELD_UPPER_NV
    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
    GL_UNSIGNED_INT16_VEC2_NV
    GL_MAX_COMPUTE_WORK_GROUP_SIZE
    GL_UTF16_NV
    GL_RIGHT
    GL_VERTEX_BINDING_OFFSET
    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV
    GL_MAP1_VERTEX_4
    GL_IMAGE_1D_ARRAY
    GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV
    GL_PERFQUERY_WAIT_INTEL
    GL_SHININESS
    GL_STENCIL_VALUE_MASK
    GL_LOWER_LEFT
    GL_COLOR_ATTACHMENT5_EXT
    GL_COMPRESSED_RGB
    GL_QUERY_WAIT_NV
    GL_REG_21_ATI
    GL_TEXTURE_DEPTH_SIZE_ARB
    GL_INT64_VEC4_ARB
    GL_TEXTURE_TARGET
    GL_WRITE_ONLY
    GL_SHADING_LANGUAGE_VERSION
    GL_BUFFER_USAGE_ARB
    GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT
    GL_TEXTURE_BINDING_1D_ARRAY
    GL_PATH_PROJECTION_MATRIX_NV
    GL_COMPILE_STATUS
    GL_IMAGE_BINDING_LAYER_EXT
    GL_TEXTURE31_ARB
    GL_CMYK_EXT
    GL_MAX_WIDTH
    GL_GREEN_SCALE
    GL_ZERO_TO_ONE
    GL_BLEND_ADVANCED_COHERENT_KHR
    GL_MAX_COMPUTE_ATOMIC_COUNTERS
    GL_PROGRAM_STRING_ARB
    GL_SAMPLER_RENDERBUFFER_NV
    GL_INTENSITY32F_ARB
    GL_CONVOLUTION_WIDTH_EXT
    GL_VERTEX_ARRAY_SIZE_EXT
    GL_TEXTURE_ENV_MODE
    GL_PROGRAM_PARAMETERS_ARB
    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB
    GL_R16UI
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER
    GL_TEXTURE_INTENSITY_TYPE
    GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV
    GL_TEXTURE_INTENSITY_TYPE_ARB
    GL_MAX_ELEMENT_INDEX
    GL_TEXTURE_PRIORITY_EXT
    GL_COPY_PIXEL_TOKEN
    GL_Z_EXT
    GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS
    GL_DST_COLOR
    GL_GET_TEXTURE_IMAGE_FORMAT
    GL_DEPTH_COMPONENT32F
    GL_PRIMITIVE_RESTART
    GL_PACK_COMPRESSED_BLOCK_DEPTH
    GL_WEIGHT_ARRAY_TYPE_ARB
    GL_MAX_TRACK_MATRICES_NV
    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR
    GL_DSDT8_NV
    GL_ACTIVE_TEXTURE
    GL_CURRENT_RASTER_POSITION
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI
    GL_QUERY_COUNTER_BITS_ARB
    GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    GL_FRAGMENT_LIGHT2_SGIX
    GL_MAX_BINDABLE_UNIFORM_SIZE_EXT
    GL_INDEX_ARRAY_LIST_STRIDE_IBM
    GL_QUAD_STRIP
    GL_IMAGE_BINDING_FORMAT_EXT
    GL_PROGRAM_INSTRUCTIONS_ARB
    GL_VIEW_CLASS_128_BITS
    GL_TEXTURE14
    GL_REFERENCED_BY_VERTEX_SHADER
    GL_TEXTURE_2D
    GL_QUERY_BUFFER_BINDING
    GL_SEPARATE_SPECULAR_COLOR_EXT
    GL_SAMPLER
    GL_SAMPLER_BUFFER_EXT
    GL_POST_CONVOLUTION_GREEN_SCALE_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED
    GL_MATRIX26_ARB
    GL_DEBUG_SOURCE_SHADER_COMPILER_KHR
    GL_COMPUTE_SHADER_INVOCATIONS_ARB
    GL_GEOMETRY_SUBROUTINE_UNIFORM
    GL_DRAW_BUFFER4_ATI
    GL_CULL_VERTEX_OBJECT_POSITION_EXT
    GL_UNIFORM_TYPE
    GL_MATRIX17_ARB
    GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT
    GL_SUPERSAMPLE_SCALE_X_NV
    GL_REFERENCE_PLANE_EQUATION_SGIX
    GL_PIXEL_GROUP_COLOR_SGIS
    GL_TEXTURE_COORD_ARRAY
    GL_EVAL_VERTEX_ATTRIB7_NV
    GL_VERTEX_ARRAY_RANGE_APPLE
    GL_TRIANGULAR_NV
    GL_DEBUG_CALLBACK_FUNCTION
    GL_NORMAL_ARRAY_TYPE
    GL_RETAINED_APPLE
    GL_PROGRAM_PIPELINE_BINDING_EXT
    GL_COMPRESSED_SRGB
    GL_LUMINANCE32I_EXT
    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS
    GL_CONSERVATIVE_RASTER_MODE_NV
    GL_CURRENT_FOG_COORDINATE
    GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV
    GL_COMPRESSED_RGBA_ASTC_12x10_KHR
    GL_MAP1_VERTEX_ATTRIB10_4_NV
    GL_SKIP_MISSING_GLYPH_NV
    GL_IMAGE_CUBE_MAP_ARRAY_EXT
    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV
    GL_HI_BIAS_NV
    GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
    GL_INVARIANT_EXT
    GL_RASTERIZER_DISCARD_NV
    GL_CURRENT_TEXTURE_COORDS
    GL_EYE_POINT_SGIS
    GL_CURRENT_RASTER_TEXTURE_COORDS
    GL_MAX_SUBROUTINES
    GL_CON_0_ATI
    GL_UNSIGNED_INT_IMAGE_BUFFER_EXT
    GL_COMBINER_MAPPING_NV
    GL_VERTEX_ATTRIB_ARRAY_INTEGER
    GL_MATRIX25_ARB
    GL_TEXTURE_MATRIX
    GL_TESSELLATION_MODE_AMD
    GL_DRAW_FRAMEBUFFER_BINDING
    GL_TEXTURE5
    GL_MAX_NUM_ACTIVE_VARIABLES
    GL_DRAW_BUFFER15
    GL_SURFACE_STATE_NV
    GL_BINORMAL_ARRAY_POINTER_EXT
    GL_TEXTURE_COORD_ARRAY_EXT
    GL_DEPTH_STENCIL_EXT
    GL_LUMINANCE8_EXT
    GL_QUADS
    GL_EVAL_VERTEX_ATTRIB1_NV
    GL_SYNC_CL_EVENT_COMPLETE_ARB
    GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
    GL_SHORT
    GL_POINT_SPRITE
    GL_MULTISAMPLE_FILTER_HINT_NV
    GL_VERTEX_ATTRIB_ARRAY7_NV
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z
    GL_TRANSFORM_FEEDBACK_VARYING
    GL_PROGRAM
    GL_DOT3_RGBA_ARB
    GL_TEXTURE_WIDTH
    GL_MAP1_TEXTURE_COORD_1
    GL_QUAD_ALPHA8_SGIS
    GL_FRAGMENT_INTERPOLATION_OFFSET_BITS
    GL_ASYNC_READ_PIXELS_SGIX
    GL_EVAL_FRACTIONAL_TESSELLATION_NV
    GL_MAX_PROGRAM_LOOP_COUNT_NV
    GL_DRAW_BUFFER14_ATI
    GL_VERTEX_ATTRIB_ARRAY_DIVISOR
    GL_MAX_NAME_STACK_DEPTH
    GL_MOVE_TO_RESETS_NV
    GL_CLAMP_FRAGMENT_COLOR
    GL_RASTER_POSITION_UNCLIPPED_IBM
    GL_COMBINER7_NV
    GL_RG8UI
    GL_TESS_CONTROL_PROGRAM_NV
    GL_NUM_INSTRUCTIONS_PER_PASS_ATI
    GL_MATRIX20_ARB
    GL_R3_G3_B2
    GL_LOCAL_CONSTANT_EXT
    GL_LIGHT_MODEL_COLOR_CONTROL_EXT
    GL_VERTEX_ATTRIB_ARRAY4_NV
    GL_DEBUG_SOURCE_THIRD_PARTY_KHR
    GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX
    GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB
    GL_COLOR_COMPONENTS
    GL_TEXTURE_CUBE_MAP_ARRAY_ARB
    GL_VERTEX_ARRAY_POINTER_EXT
    GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL
    GL_INT_SAMPLER_2D_MULTISAMPLE
    GL_RENDERBUFFER_GREEN_SIZE_EXT
    GL_BUFFER_KHR
    GL_ACTIVE_SUBROUTINE_UNIFORMS
    GL_DEPTH_STENCIL_TO_BGRA_NV
    GL_TEXTURE_COORD_ARRAY_COUNT_EXT
    GL_LIGHT_ENV_MODE_SGIX
    GL_TEXTURE_LEQUAL_R_SGIX
    GL_MAP2_INDEX
    GL_UNIFORM_BUFFER
    GL_FLOAT_32_UNSIGNED_INT_24_8_REV
    GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    GL_UNSIGNED_INT8_NV
    GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX
    GL_MAP2_VERTEX_ATTRIB1_4_NV
    GL_FRONT_RIGHT
    GL_PIXEL_UNPACK_BUFFER_EXT
    GL_RGBA32I_EXT
    GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB
    GL_TEXTURE20
    GL_MAX_LAYERS
    GL_MATRIX4_NV
    GL_ONE_MINUS_CONSTANT_COLOR
    GL_INTERNALFORMAT_GREEN_SIZE
    GL_DEBUG_SOURCE_WINDOW_SYSTEM_KHR
    GL_FRAMEBUFFER_ATTACHMENT_LAYERED
    GL_STACK_UNDERFLOW_KHR
    GL_MAX_VERTEX_ATOMIC_COUNTERS
    GL_RGBA_DXT5_S3TC
    GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT
    GL_DRAW_BUFFER
    GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
    GL_HISTOGRAM_ALPHA_SIZE_EXT
    GL_MAP1_VERTEX_ATTRIB9_4_NV
    GL_MATRIX_INDEX_ARRAY_ARB
    GL_ARRAY_BUFFER_BINDING
    GL_CONTEXT_RELEASE_BEHAVIOR_KHR
    GL_FRAMEBUFFER_DEFAULT
    GL_VERTEX_ATTRIB_ARRAY_TYPE
    GL_ISOLINES
    GL_PIXEL_PACK_BUFFER_BINDING_EXT
    GL_COLOR_ARRAY_ADDRESS_NV
    GL_TEXTURE_COMPRESSION_HINT_ARB
    GL_TEXTURE1
    GL_IDENTITY_NV
    GL_HISTOGRAM_FORMAT_EXT
    GL_TRIANGLE_MESH_SUN
    GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT
    GL_HIGH_FLOAT
    GL_CURRENT_SECONDARY_COLOR
    GL_MIRROR_CLAMP_TO_EDGE
    GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
    GL_MODELVIEW3_ARB
    GL_MODULATE_SIGNED_ADD_ATI
    GL_TEXTURE_FREE_MEMORY_ATI
    GL_SIGNED_ALPHA_NV
    GL_MINMAX_EXT
    GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
    GL_ACTIVE_PROGRAM
    GL_SRGB_DECODE_ARB
    GL_PIXEL_MAP_G_TO_G
    GL_PACK_IMAGE_HEIGHT_EXT
    GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL
    GL_USE_MISSING_GLYPH_NV
    GL_RGBA_FLOAT_MODE_ATI
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
    GL_TABLE_TOO_LARGE
    GL_VERTEX_STREAM1_ATI
    GL_HSL_LUMINOSITY_KHR
    GL_UNPACK_ALIGNMENT
    GL_RGBA2_EXT
    GL_REPLICATE_BORDER
    GL_TRANSPOSE_MODELVIEW_MATRIX_ARB
    GL_HISTOGRAM_RED_SIZE_EXT
    GL_NEAREST_CLIPMAP_NEAREST_SGIX
    GL_LIGHT3
    GL_FRAGMENT_SUBROUTINE_UNIFORM
    GL_PERFQUERY_DONOT_FLUSH_INTEL
    GL_MATRIX16_ARB
    GL_SOFTLIGHT_NV
    GL_VERTEX_ATTRIB_RELATIVE_OFFSET
    GL_QUAD_INTENSITY4_SGIS
    GL_TEXTURE_COORD_ARRAY_TYPE
    GL_MIRROR_CLAMP_EXT
    GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE
    GL_OP_MOV_EXT
    GL_RGB_FLOAT16_ATI
    GL_DEPTH_COMPONENT32F_NV
    GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL
    GL_VERSION
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
    GL_HI_SCALE_NV
    GL_MAP1_VERTEX_ATTRIB2_4_NV
    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT
    GL_SCISSOR_TEST
    GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER
    GL_MATRIX5_ARB
    GL_DONT_CARE
    GL_SPOT_CUTOFF
    GL_OP_MULTIPLY_MATRIX_EXT
    GL_LUMINANCE_ALPHA
    GL_SIGNED_RGB_NV
    GL_R32F
    GL_VERTEX_ARRAY_BINDING_APPLE
    GL_COPY_READ_BUFFER_BINDING
    GL_INT_IMAGE_2D_MULTISAMPLE_EXT
    GL_TEXTURE_ALPHA_SIZE_EXT
    GL_FENCE_CONDITION_NV
    GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV
    GL_TRANSFORM_HINT_APPLE
    GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE
    GL_COMBINER2_NV
    GL_LUMINANCE_INTEGER_EXT
    GL_ELEMENT_ARRAY_TYPE_APPLE
    GL_SAMPLER_1D_ARRAY_SHADOW
    GL_READ_PIXELS
    GL_GEOMETRY_OUTPUT_TYPE_ARB
    GL_DEPENDENT_GB_TEXTURE_2D_NV
    GL_LUMINANCE8_SNORM
    GL_T2F_V3F
    GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER
    GL_UNSIGNED_INT_S8_S8_8_8_NV
    GL_REG_1_ATI
    GL_TEXTURE_LUMINANCE_SIZE_EXT
    GL_SHADER_OBJECT_EXT
    GL_OBJECT_INFO_LOG_LENGTH_ARB
    GL_TEXTURE_GEN_T
    GL_UNSIGNED_INT16_NV
    GL_GENERATE_MIPMAP_SGIS
    GL_DEBUG_SEVERITY_LOW
    GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI
    GL_DRAW_BUFFER6
    GL_UNSIGNED_INT_IMAGE_2D_EXT
    GL_TEXTURE_RED_TYPE
    GL_CW
    GL_FUNC_ADD_EXT
    GL_VIDEO_BUFFER_PITCH_NV
    GL_MAX_TEXTURE_STACK_DEPTH
    GL_COLOR_TABLE_BLUE_SIZE_SGI
    GL_LINEARBURN_NV
    GL_HISTOGRAM_SINK
    GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE
    GL_UNPACK_RESAMPLE_OML
    GL_MODELVIEW1_STACK_DEPTH_EXT
    GL_OUTPUT_TEXTURE_COORD3_EXT
    GL_FIRST_VERTEX_CONVENTION_EXT
    GL_SCALED_RESOLVE_NICEST_EXT
    GL_UNSIGNED_IDENTITY_NV
    GL_NEGATIVE_ONE_EXT
    GL_STENCIL_INDEX1
    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING
    GL_TRANSPOSE_PROGRAM_MATRIX_EXT
    GL_INTERLEAVED_ATTRIBS
    GL_IMPLEMENTATION_COLOR_READ_FORMAT
    GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS
    GL_TEXTURE_CUBE_MAP
    GL_VERTEX_ARRAY_RANGE_VALID_NV
    GL_TEXTURE_2D_STACK_BINDING_MESAX
    GL_MAX
    GL_UNSIGNED_SHORT_5_5_5_1_EXT
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT
    GL_LINEARDODGE_NV
    GL_PIXEL_MAP_S_TO_S_SIZE
    GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT
    GL_DSDT_MAG_VIB_NV
    GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT
    GL_PROXY_TEXTURE_2D_ARRAY_EXT
    GL_STEREO
    GL_REGISTER_COMBINERS_NV
    GL_CLIP_DISTANCE1
    GL_MAX_PROGRAM_INSTRUCTIONS_ARB
    GL_TEXTURE_COMPRESSION_HINT
    GL_LOCATION_INDEX
    GL_COLOR_ATTACHMENT2
    GL_VIEW_CLASS_16_BITS
    GL_PIXEL_PACK_BUFFER_ARB
    GL_BINORMAL_ARRAY_EXT
    GL_DOUBLE_MAT4x2
    GL_TEXTURE_APPLICATION_MODE_EXT
    GL_READ_FRAMEBUFFER_BINDING
    GL_LINE_WIDTH_RANGE
    GL_PACK_COMPRESSED_BLOCK_HEIGHT
    GL_PROGRAM_RESULT_COMPONENTS_NV
    GL_RGBA8I_EXT
    GL_OUTPUT_TEXTURE_COORD24_EXT
    GL_R1UI_C4UB_V3F_SUN
    GL_VERTEX_ARRAY_LIST_STRIDE_IBM
    GL_T2F_IUI_V2F_EXT
    GL_RGBA12
    GL_WRITE_DISCARD_NV
    GL_REDUCE
    GL_TEXTURE_GEN_MODE
    GL_LOCAL_EXT
    GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL
    GL_RGBA16
    GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT
    GL_POINT_FADE_THRESHOLD_SIZE_SGIS
    GL_WIDE_LINE_HINT_PGI
    GL_WEIGHT_ARRAY_POINTER_ARB
    GL_POINT_FADE_THRESHOLD_SIZE_EXT
    GL_AUTO_NORMAL
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
    GL_POLYGON_OFFSET_CLAMP_EXT
    GL_CURRENT_FOG_COORDINATE_EXT
    GL_TEXT_FRAGMENT_SHADER_ATI
    GL_INTENSITY16_EXT
    GL_MIN_PROGRAM_TEXEL_OFFSET_EXT
    GL_SAMPLE_ALPHA_TO_COVERAGE
    GL_TIMESTAMP
    GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
    GL_RG_SNORM
    GL_COMPRESSED_RGBA_ASTC_10x5_KHR
    GL_TEXTURE21
    GL_TEXTURE_LOD_BIAS_R_SGIX
    GL_VARIABLE_G_NV
    GL_TEXTURE_BINDING_RECTANGLE_NV
    GL_ELEMENT_ARRAY_TYPE_ATI
    GL_INT_IMAGE_1D
    GL_DECR_WRAP_EXT
    GL_PACK_COMPRESSED_BLOCK_SIZE
    GL_COMPRESSED_SIGNED_RG11_EAC
    GL_DEPTH_COMPONENT24
    GL_PERFMON_RESULT_AVAILABLE_AMD
    GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI
    GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB
    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB
    GL_MODELVIEW22_ARB
    GL_DEPTH_BIAS
    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV
    GL_EYE_DISTANCE_TO_LINE_SGIS
    GL_POST_CONVOLUTION_ALPHA_BIAS
    GL_MAP2_COLOR_4
    GL_REFLECTION_MAP_ARB
    GL_QUERY_NO_WAIT
    GL_DEBUG_SOURCE_OTHER_ARB
    GL_FONT_UNINTELLIGIBLE_NV
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER
    GL_MAX_LABEL_LENGTH_KHR
    GL_SAMPLER_2D_MULTISAMPLE_ARRAY
    GL_RGBA16I_EXT
    GL_SMOOTH_LINE_WIDTH_GRANULARITY
    GL_VIEW_CLASS_48_BITS
    GL_TESS_CONTROL_SHADER
    GL_PERFMON_RESULT_AMD
    GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV
    GL_SWIZZLE_STR_DR_ATI
    GL_INTENSITY16
    GL_TEXTURE27
    GL_INDEX_OFFSET
    GL_OP_ADD_EXT
    GL_ALPHA16UI_EXT
    GL_VIVIDLIGHT_NV
    GL_INT16_VEC4_NV
    GL_PIXEL_PACK_BUFFER_EXT
    GL_VENDOR
    GL_COLOR_CLEAR_VALUE
    GL_ALL_STATIC_DATA_IBM
    GL_DEBUG_SEVERITY_MEDIUM_ARB
    GL_CLIP_DISTANCE0
    GL_SAMPLE_POSITION_NV
    GL_COMPRESSED_RED_RGTC1
    GL_UNSIGNED_INT_IMAGE_2D
    GL_SCALAR_EXT
    GL_COLOR_TABLE_LUMINANCE_SIZE
    GL_FRAGMENT_SUBROUTINE
    GL_NAND
    GL_TEXTURE_VIEW_MIN_LEVEL
    GL_SECONDARY_COLOR_ARRAY_TYPE
    GL_REG_14_ATI
    GL_FOG_DENSITY
    GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV
    GL_MAX_GEOMETRY_UNIFORM_BLOCKS
    GL_EDGE_FLAG_ARRAY_BUFFER_BINDING
    GL_FUNC_ADD
    GL_PATH_COMMAND_COUNT_NV
    GL_BUFFER_IMMUTABLE_STORAGE
    GL_FRACTIONAL_EVEN
    GL_ARRAY_SIZE
    GL_CLIP_ORIGIN
    GL_IMAGE_ROTATE_ANGLE_HP
    GL_SYNC_CL_EVENT_ARB
    GL_DUAL_ALPHA4_SGIS
    GL_LUMINANCE_FLOAT16_APPLE
    GL_TESS_EVALUATION_TEXTURE
    GL_COMPRESSED_RGBA_BPTC_UNORM
    GL_CUBIC_HP
    GL_TEXTURE_1D_BINDING_EXT
    GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX
    GL_STREAM_DRAW_ARB
    GL_SURFACE_MAPPED_NV
    GL_PLUS_DARKER_NV
    GL_NUM_SHADER_BINARY_FORMATS
    GL_POST_CONVOLUTION_GREEN_BIAS_EXT
    GL_TEXTURE_WRAP_R
    GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB
    GL_RGB_INTEGER_EXT
    GL_INT_SAMPLER_3D
    GL_MODELVIEW_MATRIX
    GL_R11F_G11F_B10F_EXT
    GL_DEBUG_GROUP_STACK_DEPTH_KHR
    GL_MAX_PROJECTION_STACK_DEPTH
    GL_TRANSFORM_FEEDBACK_BUFFER_INDEX
    GL_DUAL_INTENSITY16_SGIS
    GL_TEXTURE22
    GL_SLUMINANCE8_ALPHA8_EXT
    GL_C4F_N3F_V3F
    GL_INT16_NV
    GL_COMBINER_CD_OUTPUT_NV
    GL_INDEX
    GL_LOGIC_OP
    GL_PROXY_TEXTURE_3D_EXT
    GL_4D_COLOR_TEXTURE
    GL_DOT_PRODUCT_TEXTURE_1D_NV
    GL_SECONDARY_INTERPOLATOR_ATI
    GL_MAX_FRAGMENT_UNIFORM_VECTORS
    GL_INTERLEAVED_ATTRIBS_NV
    GL_MAX_DUAL_SOURCE_DRAW_BUFFERS
    GL_SAMPLE_SHADING_ARB
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR
    GL_VERTEX_WEIGHT_ARRAY_EXT
    GL_FOG_COORDINATE_SOURCE_EXT
    GL_DEPTH_STENCIL_NV
    GL_CURRENT_RASTER_POSITION_VALID
    GL_MODULATE
    GL_TEXTURE_CUBE_MAP_EXT
    GL_MATRIX15_ARB
    GL_GENERIC_ATTRIB_NV
    GL_COLOR_MATERIAL
    GL_TEXTURE_SAMPLES
    GL_MAP2_VERTEX_ATTRIB6_4_NV
    GL_MODELVIEW1_EXT
    GL_CONTINUOUS_AMD
    GL_UNSIGNED_SHORT_5_6_5
    GL_TEXTURE18_ARB
    GL_SCALEBIAS_HINT_SGIX
    GL_VARIANT_ARRAY_STRIDE_EXT
    GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX
    GL_COMPILE
    GL_TEXTURE_VIEW_NUM_LAYERS
    GL_ALWAYS
    GL_DOUBLE_VEC3
    GL_COMPRESSED_RGBA
    GL_RGBA_FLOAT32_ATI
    GL_LINEAR_DETAIL_ALPHA_SGIS
    GL_TEXTURE_PRIORITY
    GL_CONVOLUTION_FORMAT_EXT
    GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS
    GL_UNSIGNED_SHORT_8_8_MESA
    GL_SPECULAR
    GL_SYNC_STATUS
    GL_POINT_DISTANCE_ATTENUATION_ARB
    GL_RENDERBUFFER_HEIGHT
    GL_MAP1_VERTEX_ATTRIB5_4_NV
    GL_COLOR_ARRAY_COUNT_EXT
    GL_TRIANGLE_STRIP_ADJACENCY_ARB
    GL_INTENSITY_FLOAT32_ATI
    GL_YCBCR_MESA
    GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD
    GL_PATH_END_CAPS_NV
    GL_PIXEL_TILE_GRID_DEPTH_SGIX
    GL_TRANSFORM_FEEDBACK_NV
    GL_DEBUG_LOGGED_MESSAGES_AMD
    GL_PATH_MODELVIEW_MATRIX_NV
    GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS
    GL_POINT_SIZE_MIN_SGIS
    GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV
    GL_SAMPLER_CUBE_SHADOW_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_EXT
    GL_MINOR_VERSION
    GL_EVAL_VERTEX_ATTRIB12_NV
    GL_TRANSPOSE_COLOR_MATRIX_ARB
    GL_ONE_MINUS_SRC_COLOR
    GL_CURRENT_BINORMAL_EXT
    GL_INT_SAMPLER_CUBE_MAP_ARRAY
    GL_VERTEX_ATTRIB_ARRAY_POINTER
    GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV
    GL_BLEND_DST_ALPHA_EXT
    GL_MAX_PROGRAM_TEXEL_OFFSET_NV
    GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV
    GL_CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV
    GL_TEXTURE_4D_SGIS
    GL_DYNAMIC_COPY
    GL_SHADER
    GL_VERTEX_PROGRAM_TWO_SIDE_ARB
    GL_ASYNC_DRAW_PIXELS_SGIX
    GL_COMPARE_R_TO_TEXTURE
    GL_ALWAYS_FAST_HINT_PGI
    GL_COLOR_ATTACHMENT11
    GL_DSDT8_MAG8_INTENSITY8_NV
    GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV
    GL_REG_12_ATI
    GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM
    GL_READ_PIXEL_DATA_RANGE_POINTER_NV
    GL_PIXEL_UNPACK_BUFFER_BINDING_EXT
    GL_UNSIGNED_INVERT_NV
    GL_TEXTURE_RESIDENT_EXT
    GL_SET
    GL_LOW_INT
    GL_ACTIVE_VERTEX_UNITS_ARB
    GL_MAX_VERTEX_ATTRIBS_ARB
    GL_RGBA16_SNORM
    GL_ARRAY_OBJECT_BUFFER_ATI
    GL_COMPRESSED_RGBA_ASTC_5x4_KHR
    GL_INVERSE_TRANSPOSE_NV
    GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB
    GL_VIEWPORT_SWIZZLE_Z_NV
    GL_4PASS_1_EXT
    GL_PLUS_NV
    GL_TEXTURE_BINDING_RENDERBUFFER_NV
    GL_MIRRORED_REPEAT_IBM
    GL_UNIFORM_IS_ROW_MAJOR
    GL_SYNC_X11_FENCE_EXT
    GL_RGBA_INTEGER
    GL_INT_IMAGE_2D_RECT_EXT
    GL_MAX_PALETTE_MATRICES_ARB
    GL_NUM_PASSES_ATI
    GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV
    GL_CON_6_ATI
    GL_EDGE_FLAG
    GL_IR_INSTRUMENT1_SGIX
    GL_IMAGE_BINDING_NAME_EXT
    GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI
    GL_STENCIL_RENDERABLE
    GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB
    GL_IMAGE_2D_RECT
    GL_ZOOM_X
    GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY
    GL_UNPACK_ROW_LENGTH
    GL_MAX_FRAGMENT_UNIFORM_BLOCKS
    GL_MATRIX12_ARB
    GL_MAX_TEXTURE_COORDS_ARB
    GL_ROUND_NV
    GL_SAMPLE_MASK_SGIS
    GL_ALPHA4_EXT
    GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE
    GL_COMPRESSED_SRGB_ALPHA_EXT
    GL_LOCATION_COMPONENT
    GL_COLOR_ATTACHMENT8
    GL_TRANSPOSE_TEXTURE_MATRIX
    GL_OFFSET_TEXTURE_MATRIX_NV
    GL_RGBA_INTEGER_EXT
    GL_ZOOM_Y
    GL_CONVOLUTION_HEIGHT
    GL_FRAGMENT_SHADER_ATI
    GL_ATTRIB_STACK_DEPTH
    GL_SHADING_LANGUAGE_VERSION_ARB
    GL_RG16UI
    GL_DEBUG_OUTPUT_SYNCHRONOUS
    GL_UNPACK_ROW_BYTES_APPLE
    GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV
    GL_TEXTURE_3D_EXT
    GL_UNSIGNED_INT_10_10_10_2
    GL_VERTEX_SHADER_INVOCATIONS_ARB
    GL_LINE_STIPPLE
    GL_TESS_GEN_POINT_MODE
    GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES
    GL_UNSIGNED_INT_24_8_NV
    GL_UNSIGNED_INT_IMAGE_2D_ARRAY
    GL_COLOR_MATRIX_STACK_DEPTH
    GL_COLOR_ARRAY_STRIDE_EXT
    GL_CONSTANT_COLOR0_NV
    GL_STORAGE_SHARED_APPLE
    GL_FOG_FUNC_SGIS
    GL_UNIFORM_BLOCK_INDEX
    GL_EVAL_VERTEX_ATTRIB2_NV
    GL_DEPTH_COMPONENT16
    GL_DRAW_BUFFER12
    GL_NUM_VIDEO_CAPTURE_STREAMS_NV
    GL_QUERY_BY_REGION_WAIT
    GL_COMPRESSED_RGBA_ASTC_8x6_KHR
    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
    GL_TEXTURE_GATHER
    GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT
    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB
    GL_R1UI_T2F_C4F_N3F_V3F_SUN
    GL_MODELVIEW4_ARB
    GL_TEXTURE_BINDING_BUFFER_ARB
    GL_WINDOW_RECTANGLE_MODE_EXT
    GL_BUFFER
    GL_POINT_SIZE_MIN_EXT
    GL_TEXTURE_GEN_R
    GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS
    GL_MODELVIEW
    GL_FRAMEBUFFER_COMPLETE
    GL_VERTEX_ARRAY_BINDING
    GL_LUMINANCE16_SNORM
    GL_ATTENUATION_EXT
    GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL
    GL_CONSTANT_ALPHA_EXT
    GL_MAX_LIST_NESTING
    GL_ALPHA8UI_EXT
    GL_RESAMPLE_ZERO_FILL_OML
    GL_DRAW_BUFFER10_ATI
    GL_VERTICES_SUBMITTED_ARB
    GL_RGBA32I
    GL_RGB_S3TC
    GL_IMAGE_CUBIC_WEIGHT_HP
    GL_INT_SAMPLER_BUFFER_AMD
    GL_SIGNED_LUMINANCE_NV
    GL_NEAREST_MIPMAP_LINEAR
    GL_BGRA_INTEGER_EXT
    GL_BUFFER_MAP_LENGTH
    GL_DETAIL_TEXTURE_2D_BINDING_SGIS
    GL_UNSIGNED_INT64_VEC4_ARB
    GL_DSDT_MAG_NV
    GL_QUERY_BY_REGION_WAIT_NV
    GL_CON_31_ATI
    GL_SAMPLE_COVERAGE_VALUE_ARB
    GL_DRAW_BUFFER11_ARB
    GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT
    GL_FRAGMENT_COVERAGE_TO_COLOR_NV
    GL_4_BYTES
    GL_COMPRESSED_SIGNED_R11_EAC
    GL_TOP_LEVEL_ARRAY_STRIDE
    GL_SQUARE_NV
    GL_COMPRESSED_SIGNED_RG_RGTC2
    GL_TEXTURE_CLIPMAP_OFFSET_SGIX
    GL_LUMINANCE_ALPHA16F_ARB
    GL_DRAW_BUFFER3_ARB
    GL_SECONDARY_COLOR_ARRAY_LIST_IBM
    GL_VIEWPORT_BOUNDS_RANGE
    GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV
    GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE
    GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE
    GL_UNSIGNED_INT_IMAGE_BUFFER
    GL_TEXTURE_2D_MULTISAMPLE_ARRAY
    GL_TEXTURE_MIN_LOD
    GL_DRAW_BUFFER9_ARB
    GL_MAX_SAMPLES
    GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV
    GL_RESET_NOTIFICATION_STRATEGY_ARB
    GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV
    GL_UNSIGNED_INT_SAMPLER_2D
    GL_MATRIX4_ARB
    GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT
    GL_TEXTURE_ALPHA_TYPE_ARB
    GL_BUFFER_ACCESS
    GL_GET_TEXTURE_IMAGE_TYPE
    GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB
    GL_MATRIX2_NV
    GL_RED_MIN_CLAMP_INGR
    GL_VERTEX_ARRAY_RANGE_NV
    GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR
    GL_MATRIX1_NV
    GL_COMPILE_AND_EXECUTE
    GL_READ_PIXELS_TYPE
    GL_FIXED_ONLY_ARB
    GL_COMPRESSED_SIGNED_RED_RGTC1_EXT
    GL_VIRTUAL_PAGE_SIZE_Z_AMD
    GL_UNSIGNED_NORMALIZED_ARB
    GL_STREAM_COPY_ARB
    GL_COLOR_ATTACHMENT7_EXT
    GL_EVAL_VERTEX_ATTRIB0_NV
    GL_DOUBLE_MAT4x2_EXT
    GL_PROJECTION
    GL_QUAD_MESH_SUN
    GL_INCR_WRAP_EXT
    GL_CONVOLUTION_BORDER_MODE
    GL_READ_FRAMEBUFFER
    GL_SYSTEM_FONT_NAME_NV
    GL_PROXY_TEXTURE_2D_ARRAY
    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER
    GL_4PASS_1_SGIS
    GL_REPLACEMENT_CODE_SUN
    GL_BGR_INTEGER
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR
    GL_PROGRAM_ERROR_POSITION_NV
    GL_DEPTH_BUFFER_FLOAT_MODE_NV
    GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT
    GL_SELECTION_BUFFER_SIZE
    GL_POST_TEXTURE_FILTER_BIAS_SGIX
    GL_UNSIGNED_INT_8_8_8_8_REV
    GL_TRACK_MATRIX_TRANSFORM_NV
    GL_COMPRESSED_SLUMINANCE_EXT
    GL_FLOAT_RG32_NV
    GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV
    GL_DOUBLE_MAT2x3_EXT
    GL_FASTEST
    GL_MAX_DEBUG_MESSAGE_LENGTH_AMD
    GL_UPPER_LEFT
    GL_HISTOGRAM_WIDTH_EXT
    GL_POLYGON
    GL_COMBINER_CD_DOT_PRODUCT_NV
    GL_FRAGMENT_SHADER_DERIVATIVE_HINT
    GL_INT_SAMPLER_RENDERBUFFER_NV
    GL_COMBINER0_NV
    GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI
    GL_INT8_VEC3_NV
    GL_DEPTH32F_STENCIL8_NV
    GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS
    GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH
    GL_DETAIL_TEXTURE_LEVEL_SGIS
    GL_GLOBAL_ALPHA_SUN
    GL_MAX_ASYNC_HISTOGRAM_SGIX
    GL_C4UB_V3F
    GL_TEXTURE_BLUE_SIZE_EXT
    GL_BUFFER_MAP_OFFSET
    GL_IMAGE_CLASS_2_X_32
    GL_EDGE_FLAG_ARRAY_POINTER_EXT
    GL_UNDEFINED_APPLE
    GL_INT_SAMPLER_2D_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE
    GL_FILTER4_SGIS
    GL_DST_ALPHA
    GL_COMPRESSED_RGBA_S3TC_DXT5_EXT
    GL_4PASS_3_EXT
    GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV
    GL_MAX_PROGRAM_TEXEL_OFFSET_EXT
    GL_LIGHT_MODEL_AMBIENT
    GL_DEPTH_COMPONENT16_SGIX
    GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV
    GL_TEXTURE_BINDING_BUFFER_EXT
    GL_LO_SCALE_NV
    GL_COLOR_ATTACHMENT0
    GL_MAP2_VERTEX_3
    GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB
    GL_LINE_SMOOTH
    GL_FRAMEBUFFER_DEFAULT_WIDTH
    GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT
    GL_GEOMETRY_INPUT_TYPE_EXT
    GL_MODELVIEW19_ARB
    GL_TEXTURE_BINDING_1D
    GL_COMPRESSED_LUMINANCE_ALPHA
    GL_MAX_VARYING_FLOATS
    GL_MAGNITUDE_SCALE_NV
    GL_MODELVIEW10_ARB
    GL_LESS
    GL_VALIDATE_STATUS
    GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS
    GL_MODELVIEW31_ARB
    GL_PROGRAM_ALU_INSTRUCTIONS_ARB
    GL_TEXTURE_SWIZZLE_A_EXT
    GL_REG_25_ATI
    GL_COLOR_SUM_ARB
    GL_DEPTH_COMPONENT16_ARB
    GL_VERTEX_SOURCE_ATI
    GL_SAMPLE_SHADING
    GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR
    GL_INT_SAMPLER_1D_ARRAY_EXT
    GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
    GL_ACTIVE_SUBROUTINES
    GL_MAX_DEBUG_LOGGED_MESSAGES_KHR
    GL_UNSIGNED_INT16_VEC4_NV
    GL_SYNC_GPU_COMMANDS_COMPLETE
    GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS
    GL_DUAL_INTENSITY4_SGIS
    GL_FOG_COORD
    GL_IS_PER_PATCH
    GL_TEXTURE_BUFFER_ARB
    GL_BLEND_SRC
    GL_OBJECT_LINEAR
    GL_FRAMEBUFFER
    GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV
    GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB
    GL_TEXTURE_RENDERBUFFER_NV
    GL_CURRENT_FOG_COORD
    GL_MODELVIEW29_ARB
    GL_UNSIGNED_INT64_VEC3_NV
    GL_OFFSET_TEXTURE_2D_NV
    GL_CONTEXT_LOST
    GL_UNIFORM_BUFFER_BINDING_EXT
    GL_MATRIX6_ARB
    GL_UNSIGNED_INT_VEC3
    GL_RENDERBUFFER_GREEN_SIZE
    GL_UNDEFINED_VERTEX
    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
    GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT
    GL_IMAGE_PIXEL_FORMAT
    GL_EDGE_FLAG_ARRAY_STRIDE
    GL_TEXTURE_CUBE_MAP_ARB
    GL_ALPHA_MAX_SGIX
    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB
    GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT
    GL_OVERLAY_NV
    GL_STREAM_DRAW
    GL_UNSIGNED_INT
    GL_VIEW_CLASS_BPTC_FLOAT
    GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT
    GL_COLOR_INDEX1_EXT
    GL_COLOR_TABLE_BIAS
    GL_FRAGMENT_MATERIAL_EXT
    GL_ADJACENT_PAIRS_NV
    GL_PATH_FORMAT_SVG_NV
    GL_BLUE_NV
    GL_COMBINER_COMPONENT_USAGE_NV
    GL_RGB12_EXT
    GL_RESAMPLE_AVERAGE_OML
    GL_FRAGMENT_PROGRAM_NV
    GL_PATH_MODELVIEW_STACK_DEPTH_NV
    GL_COLOR_ATTACHMENT27
    GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
    GL_ONE_MINUS_DST_ALPHA
    GL_FOG_COORD_ARRAY_BUFFER_BINDING
    GL_INTENSITY8UI_EXT
    GL_STENCIL_BITS
    GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI
    GL_DEBUG_SOURCE_OTHER_KHR
    GL_VERTEX_ATTRIB_MAP2_APPLE
    GL_IMAGE_SCALE_Y_HP
    GL_TEXTURE_DEPTH_TYPE_ARB
    GL_IGNORE_BORDER_HP
    GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES
    GL_IMAGE_SCALE_X_HP
    GL_AUX1
    GL_IMAGE_2D_ARRAY_EXT
    GL_LUMINANCE16_ALPHA16_SNORM
    GL_UNSIGNED_INT16_VEC3_NV
    GL_CURRENT_RASTER_COLOR
    GL_DEBUG_SEVERITY_HIGH_AMD
    GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS
    GL_POLYGON_OFFSET_UNITS
    GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV
    GL_VARIABLE_E_NV
    GL_DISPATCH_INDIRECT_BUFFER
    GL_DYNAMIC_DRAW
    GL_COMPRESSED_RGBA_ASTC_10x6_KHR
    GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS
    GL_WRITE_PIXEL_DATA_RANGE_NV
    GL_BLEND_DST
    GL_2PASS_0_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT
    GL_NUM_SAMPLE_COUNTS
    GL_INTERNALFORMAT_GREEN_TYPE
    GL_MIRROR_CLAMP_ATI
    GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB
    GL_STENCIL_BACK_PASS_DEPTH_FAIL
    GL_MODELVIEW20_ARB
    GL_OP_INDEX_EXT
    GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD
    GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX
    GL_POINT_FADE_THRESHOLD_SIZE
    GL_REG_10_ATI
    GL_DOT3_RGB
    GL_COMPRESSED_INTENSITY_ARB
    GL_PIXEL_MAP_A_TO_A_SIZE
    GL_TEXTURE_DEPTH
    GL_VARIANT_VALUE_EXT
    GL_BLUE_BITS
    GL_MUL_ATI
    GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX
    GL_ACTIVE_VARYING_MAX_LENGTH_NV
    GL_TEXTURE_LOD_BIAS
    GL_FIXED_ONLY
    GL_SHADER_OBJECT_ARB
    GL_READ_PIXELS_FORMAT
    GL_VIEWPORT_SWIZZLE_NEGATIVE_W_NV
    GL_UNIFORM_BLOCK
    GL_SPRITE_AXIAL_SGIX
    GL_DUAL_ALPHA12_SGIS
    GL_MAX_RENDERBUFFER_SIZE_EXT
    GL_PERFORMANCE_MONITOR_AMD
    GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV
    GL_DEBUG_SOURCE_API_ARB
    GL_DEBUG_TYPE_PUSH_GROUP
    GL_COMPRESSED_LUMINANCE_ARB
    GL_UNSIGNED_INT64_ARB
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
    GL_UNIFORM_BUFFER_SIZE
    GL_PREVIOUS_TEXTURE_INPUT_NV
    GL_RED_SNORM
    GL_MODELVIEW16_ARB
    GL_ALLOW_DRAW_OBJ_HINT_PGI
    GL_RED_BITS
    GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
    GL_FAILURE_NV
    GL_COLOR_ARRAY_TYPE
    GL_MAD_ATI
    GL_ACTIVE_ATTRIBUTES
    GL_DRAW_BUFFER0
    GL_TEXTURE15_ARB
    GL_PIXEL_TEX_GEN_MODE_SGIX
    GL_HARDMIX_NV
    GL_TESS_EVALUATION_SHADER
    GL_DEBUG_SEVERITY_MEDIUM
    GL_SRC_ALPHA_SATURATE
    GL_COMBINER_MUX_SUM_NV
    GL_SECONDARY_COLOR_ARRAY_POINTER_EXT
    GL_VERTEX_ATTRIB_ARRAY_LONG
    GL_DRAW_BUFFER12_ARB
    GL_VARIANT_ARRAY_POINTER_EXT
    GL_SPRITE_MODE_SGIX
    GL_SEPARATE_SPECULAR_COLOR
    GL_CON_15_ATI
    GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED
    GL_BUFFER_MAPPED_ARB
    GL_NORMAL_MAP_EXT
    GL_OUTPUT_TEXTURE_COORD23_EXT
    GL_TRANSFORM_FEEDBACK_ACTIVE
    GL_PN_TRIANGLES_NORMAL_MODE_ATI
    GL_DEBUG_TYPE_PORTABILITY
    GL_VBO_FREE_MEMORY_ATI
    GL_LOSE_CONTEXT_ON_RESET
    GL_MAX_COMPUTE_IMAGE_UNIFORMS
    GL_AUX2
    GL_MAP1_TEXTURE_COORD_4
    GL_MULT
    GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS
    GL_QUERY_KHR
    GL_T2F_IUI_N3F_V2F_EXT
    GL_4PASS_2_SGIS
    GL_MIN_FRAGMENT_INTERPOLATION_OFFSET
    GL_TEXTURE_DS_SIZE_NV
    GL_REG_9_ATI
    GL_PLUS_CLAMPED_NV
    GL_ACTIVE_UNIFORM_MAX_LENGTH
    GL_MAX_IMAGE_SAMPLES_EXT
    GL_LUMINANCE_ALPHA_FLOAT32_APPLE
    GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB
    GL_TEXTURE_SPARSE_ARB
    GL_WARP_SIZE_NV
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT
    GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV
    GL_TESS_GEN_VERTEX_ORDER
    GL_TEXTURE_VIEW_MIN_LAYER
    GL_FOG_COORD_ARRAY_POINTER
    GL_QUERY_RESULT_NO_WAIT_AMD
    GL_RGB4
    GL_RGB12
    GL_MAX_ATTRIB_STACK_DEPTH
    GL_PROXY_HISTOGRAM_EXT
    GL_OBJECT_VALIDATE_STATUS_ARB
    GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB
    GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS
    GL_PROGRAM_BINDING_ARB
    GL_PATH_FOG_GEN_MODE_NV
    GL_EYE_PLANE
    GL_UNPACK_RESAMPLE_SGIX
    GL_TRANSLATE_Y_NV
    GL_SRC_IN_NV
    GL_LUMINANCE12_ALPHA12
    GL_ALWAYS_SOFT_HINT_PGI
    GL_FRAMEBUFFER_BLEND
    GL_MAX_ELEMENTS_INDICES_EXT
    GL_NORMAL_ARRAY_TYPE_EXT
    GL_CONFORMANT_NV
    GL_CON_11_ATI
    GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI
    GL_POST_COLOR_MATRIX_BLUE_SCALE
    GL_VIEW_CLASS_24_BITS
    GL_GEOMETRY_INPUT_TYPE
    GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD
    GL_COMBINER_SCALE_NV
    GL_VIRTUAL_PAGE_SIZE_X_ARB
    GL_PIXEL_MAP_R_TO_R_SIZE
    GL_SAMPLER_CUBE_SHADOW
    GL_INT_IMAGE_2D_ARRAY
    GL_TEXTURE_BLUE_SIZE
    GL_VIEW_CLASS_RGTC1_RED
    GL_RGB_422_APPLE
    GL_POST_COLOR_MATRIX_BLUE_BIAS
    GL_TEXTURE31
    GL_FRAMEBUFFER_DEFAULT_LAYERS
    GL_AFFINE_2D_NV
    GL_COMBINE4_NV
    GL_DOT_PRODUCT_PASS_THROUGH_NV
    GL_C3F_V3F
    GL_TEXTURE_SWIZZLE_B
    GL_FULL_SUPPORT
    GL_VERTEX_ARRAY_OBJECT_EXT
    GL_DST_IN_NV
    GL_RG16_SNORM
    GL_FOG_COORDINATE_ARRAY_STRIDE_EXT
    GL_ACCUM_RED_BITS
    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING
    GL_MAX_SAMPLE_MASK_WORDS
    GL_TEXTURE_REDUCTION_MODE_ARB
    GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT
    GL_SAMPLE_LOCATION_SUBPIXEL_BITS_ARB
    GL_SRGB_EXT
    GL_LIGHTEN_NV
    GL_COLOR_ATTACHMENT21
    GL_CURRENT_PALETTE_MATRIX_ARB
    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB
    GL_TEXTURE_2D_ARRAY
    GL_R1UI_C3F_V3F_SUN
    GL_TEXTURE_BINDING_RECTANGLE
    GL_LINEAR_MIPMAP_NEAREST
    GL_MAX_VERTEX_OUTPUT_COMPONENTS
    GL_PROXY_TEXTURE_2D_STACK_MESAX
    GL_TEXTURE_BINDING_RECTANGLE_ARB
    GL_MATRIX27_ARB
    GL_DEPTH_CLAMP_NV
    GL_EVAL_2D_NV
    GL_GEOMETRY_INPUT_TYPE_ARB
    GL_CONSTANT_COLOR_EXT
    GL_UNKNOWN_CONTEXT_RESET_KHR
    GL_MIRROR_CLAMP_TO_EDGE_ATI
    GL_OUTPUT_TEXTURE_COORD19_EXT
    GL_COLOR_ARRAY
    GL_RGBA32UI_EXT
    GL_RESET_NOTIFICATION_STRATEGY_KHR
    GL_PIXEL_MAP_B_TO_B_SIZE
    GL_TRIANGLES_ADJACENCY_EXT
    GL_BLEND_EQUATION
    GL_PROGRAM_PIPELINE_BINDING
    GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB
    GL_CONVOLUTION_FORMAT
    GL_PROXY_TEXTURE_CUBE_MAP
    GL_OUTPUT_TEXTURE_COORD29_EXT
    GL_MODELVIEW7_ARB
    GL_EYE_PLANE_ABSOLUTE_NV
    GL_PRESENT_TIME_NV
    GL_OUTPUT_FOG_EXT
    GL_TEXTURE_GEN_S
    GL_FRAGMENT_LIGHTING_SGIX
    GL_EDGE_FLAG_ARRAY
    GL_READ_ONLY
    GL_POINT_SIZE_MAX_ARB
    GL_SIGNED_NEGATE_NV
    GL_MATRIX_PALETTE_ARB
    GL_REG_13_ATI
    GL_PROGRAM_NATIVE_TEMPORARIES_ARB
    GL_COMPRESSED_SRGB_ALPHA
    GL_STATIC_ATI
    GL_CLIENT_ACTIVE_TEXTURE
    GL_CLAMP_TO_BORDER_SGIS
    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB
    GL_S
    GL_FRAGMENT_PROGRAM_ARB
    GL_FOG_COORD_ARRAY_LENGTH_NV
    GL_VIRTUAL_PAGE_SIZE_Y_ARB
    GL_COMPARE_R_TO_TEXTURE_ARB
    GL_DOT4_ATI
    GL_PROXY_TEXTURE_CUBE_MAP_ARRAY
    GL_MATRIX19_ARB
    GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB
    GL_DEBUG_TYPE_PERFORMANCE
    GL_TESS_GEN_SPACING
    GL_POST_CONVOLUTION_ALPHA_SCALE_EXT
    GL_422_REV_AVERAGE_EXT
    GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX
    GL_UNPACK_SKIP_ROWS
    GL_BUFFER_USAGE
    GL_INDEX_ARRAY_TYPE_EXT
    GL_RESAMPLE_REPLICATE_SGIX
    GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV
    GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB
    GL_CLIP_PLANE1
    GL_DEBUG_CATEGORY_OTHER_AMD
    GL_FRAMEBUFFER_SRGB_CAPABLE_EXT
    GL_HISTOGRAM_EXT
    GL_IMAGE_PIXEL_TYPE
    GL_CON_24_ATI
    GL_LUMINANCE12_EXT
    GL_STENCIL_BACK_REF
    GL_MAX_VIEWS_OVR
    GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS
    GL_ALPHA_TEST
    GL_LOCAL_CONSTANT_VALUE_EXT
    GL_CULL_MODES_NV
    GL_DEBUG_CATEGORY_APPLICATION_AMD
    GL_GEOMETRY_SHADER_ARB
    GL_VIEWPORT_SWIZZLE_NEGATIVE_Z_NV
    GL_DOUBLE_MAT4_EXT
    GL_NEGATIVE_Z_EXT
    GL_IMAGE_BUFFER_EXT
    GL_TEXTURE_SRGB_DECODE_EXT
    GL_HISTOGRAM_SINK_EXT
    GL_LUMINANCE8UI_EXT
    GL_TEXTURE28_ARB
    GL_BLEND_EQUATION_ALPHA_EXT
    GL_DYNAMIC_READ_ARB
    GL_MAX_DEBUG_LOGGED_MESSAGES_AMD
    GL_IMAGE_MIN_FILTER_HP
    GL_DOUBLE_MAT3x2
    GL_DOT_PRODUCT_NV
    GL_REG_19_ATI
    GL_STENCIL_FUNC
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR
    GL_CLAMP_FRAGMENT_COLOR_ARB
    GL_VERTEX_ARRAY_LENGTH_NV
    GL_CALLIGRAPHIC_FRAGMENT_SGIX
    GL_VIEW_CLASS_S3TC_DXT1_RGBA
    GL_MIN_PROGRAM_TEXEL_OFFSET
    GL_T2F_IUI_N3F_V3F_EXT
    GL_LUMINANCE_ALPHA_SNORM
    GL_PALETTE4_RGB8_OES
    GL_READ_BUFFER
    GL_CURRENT_RASTER_SECONDARY_COLOR
    GL_OUTPUT_TEXTURE_COORD17_EXT
    GL_NAMED_STRING_TYPE_ARB
    GL_VECTOR_EXT
    GL_STENCIL_PASS_DEPTH_FAIL
    GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV
    GL_SECONDARY_COLOR_ARRAY_STRIDE
    GL_UNSIGNED_INT_VEC2_EXT
    GL_PATH_CLIENT_LENGTH_NV
    GL_MAP2_VERTEX_4
    GL_TEXTURE
    GL_RG
    GL_CLIP_NEAR_HINT_PGI
    GL_MATRIX_EXT
    GL_CON_14_ATI
    GL_PROGRAM_SEPARABLE
    GL_DOT2_ADD_ATI
    GL_GEOMETRY_DEFORMATION_SGIX
    GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT
    GL_UNPACK_COMPRESSED_BLOCK_HEIGHT
    GL_WRAP_BORDER_SUN
    GL_MATRIX31_ARB
    GL_INT_IMAGE_1D_EXT
    GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS
    GL_POLYGON_OFFSET_BIAS_EXT
    GL_VERTEX_STREAM5_ATI
    GL_RENDERBUFFER_SAMPLES
    GL_RG32F
    GL_INT_IMAGE_2D
    GL_MAX_FRAGMENT_UNIFORM_COMPONENTS
    GL_DEBUG_TYPE_PORTABILITY_ARB
    GL_EVAL_VERTEX_ATTRIB6_NV
    GL_PN_TRIANGLES_ATI
    GL_GEOMETRY_VERTICES_OUT
    GL_LINEAR_CLIPMAP_NEAREST_SGIX
    GL_MAX_COLOR_MATRIX_STACK_DEPTH
    GL_RGB10_A2_EXT
    GL_SCALE_BY_FOUR_NV
    GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS
    GL_INT8_NV
    GL_SEPARATE_ATTRIBS_NV
    GL_OP_MUL_EXT
    GL_SAMPLE_ALPHA_TO_ONE_EXT
    GL_TEXTURE_STENCIL_SIZE_EXT
    GL_UNSIGNED_BYTE
    GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT
    GL_UNSIGNED_INT_SAMPLER_CUBE_EXT
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE
    GL_DUDV_ATI
    GL_MAP_TESSELLATION_NV
    GL_IMAGE_2D_MULTISAMPLE_ARRAY
    GL_VIEWPORT_SWIZZLE_Y_NV
    GL_TEXTURE_BINDING_2D_MULTISAMPLE
    GL_PROXY_TEXTURE_4D_SGIS
    GL_VERTEX_SHADER_BINDING_EXT
    GL_BUFFER_DATA_SIZE
    GL_VERTEX_STREAM0_ATI
    GL_SAMPLER_BUFFER
    GL_TEXTURE_FILTER_CONTROL
    GL_MAX_TRANSFORM_FEEDBACK_BUFFERS
    GL_COLOR_TABLE_INTENSITY_SIZE_SGI
    GL_CULL_VERTEX_IBM
    GL_STENCIL_ATTACHMENT
    GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV
    GL_MAX_VERTEX_SHADER_VARIANTS_EXT
    GL_OBJECT_LINEAR_NV
    GL_HSL_COLOR_NV
    GL_INDEX_ARRAY
    GL_3D_COLOR
    GL_MAX_WINDOW_RECTANGLES_EXT
    GL_MAX_DEBUG_LOGGED_MESSAGES_ARB
    GL_LIGHT7
    GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN
    GL_FLOAT_RG16_NV
    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB
    GL_PROXY_HISTOGRAM
    GL_STENCIL_BACK_VALUE_MASK
    GL_LUMINANCE_ALPHA_FLOAT32_ATI
    GL_GEOMETRY_OUTPUT_TYPE
    GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT
    GL_ARRAY_BUFFER
    GL_422_EXT
    GL_RGBA_INTEGER_MODE_EXT
    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
    GL_OUTPUT_TEXTURE_COORD7_EXT
    GL_DT_BIAS_NV
    GL_MAX_VARYING_FLOATS_ARB
    GL_PATH_TERMINAL_DASH_CAP_NV
    GL_RG_INTEGER
    GL_SIGNED_INTENSITY_NV
    GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS
    GL_STREAM_READ
    GL_BUFFER_GPU_ADDRESS_NV
    GL_MAX_RASTER_SAMPLES_EXT
    GL_TRANSPOSE_COLOR_MATRIX
    GL_COMPRESSED_RGBA_ARB
    GL_RG32UI
    GL_DEPTH_STENCIL_TEXTURE_MODE
    GL_PATH_MODELVIEW_NV
    GL_VERTEX_ATTRIB_ARRAY1_NV
    GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV
    GL_MAX_VERTEX_VARYING_COMPONENTS_EXT
    GL_PATCHES
    GL_QUADRATIC_ATTENUATION
    GL_VERTEX_ATTRIB_ARRAY_NORMALIZED
    GL_DRAW_BUFFER8
    GL_BLUE_MAX_CLAMP_INGR
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT
    GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV
    GL_ORDER
    GL_VIEWPORT_POSITION_W_SCALE_NV
    GL_INTENSITY_FLOAT16_ATI
    GL_FIXED
    GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
    GL_UNPACK_IMAGE_HEIGHT_EXT
    GL_SAMPLE_MASK_VALUE
    GL_DRAW_BUFFER14_ARB
    GL_PATH_STENCIL_REF_NV
    GL_PROGRAM_ERROR_STRING_ARB
    GL_DOUBLEBUFFER
    GL_PROXY_TEXTURE_1D_EXT
    GL_DST_OUT_NV
    GL_RGB16F
    GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
    GL_TEXTURE_DEPTH_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV
    GL_MODELVIEW23_ARB
    GL_DEBUG_LOGGED_MESSAGES_KHR
    GL_SECONDARY_COLOR_ARRAY_TYPE_EXT
    GL_RGB_FLOAT16_APPLE
    GL_MIN_LOD_WARNING_AMD
    GL_MAP2_VERTEX_ATTRIB3_4_NV
    GL_TEXTURE29_ARB
    GL_TEXTURE_COMPRESSED_BLOCK_WIDTH
    GL_INVALID_ENUM
    GL_UNSIGNED_INT_SAMPLER_1D_EXT
    GL_MAX_VERTEX_IMAGE_UNIFORMS
    GL_VERTEX_SUBROUTINE_UNIFORM
    GL_MAX_GEOMETRY_IMAGE_UNIFORMS
    GL_CURRENT_VERTEX_EXT
    GL_SUBPIXEL_BITS
    GL_UNPACK_SKIP_VOLUMES_SGIS
    GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV
    GL_RENDERBUFFER_DEPTH_SIZE
    GL_DISPLAY_LIST
    GL_IMAGE_1D
    GL_CONDITION_SATISFIED
    GL_IMAGE_CLASS_4_X_8
    GL_CULL_VERTEX_EXT
    GL_ADD_ATI
    GL_TEXTURE15
    GL_IMAGE_2D_MULTISAMPLE
    GL_FRAGMENT_LIGHT0_SGIX
    GL_FOG_MODE
    GL_MATRIX13_ARB
    GL_PROXY_TEXTURE_1D_ARRAY_EXT
    GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL
    GL_RGBA_SIGNED_COMPONENTS_EXT
    GL_COLOR_ATTACHMENT23
    GL_CLIP_VOLUME_CLIPPING_HINT_EXT
    GL_PIXEL_MAG_FILTER_EXT
    GL_OUTPUT_TEXTURE_COORD11_EXT
    GL_SIGNED_HILO16_NV
    GL_MINUS_NV
    GL_LIGHT6
    GL_FIELD_LOWER_NV
    GL_POSITION
    GL_OUT_OF_MEMORY
    GL_BLEND_DST_RGB
    GL_INVALID_VALUE
    GL_FRAMEBUFFER_UNDEFINED
    GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV
    GL_VIBRANCE_BIAS_NV
    GL_VIEW_CLASS_32_BITS
    GL_RGB10_EXT
    GL_CONVOLUTION_FILTER_SCALE_EXT
    GL_COMPUTE_SHADER
    GL_VERTEX_ARRAY_RANGE_POINTER_NV
    GL_CONSERVE_MEMORY_HINT_PGI
    GL_IMAGE_BINDING_LAYERED_EXT
    GL_TEXTURE_GREEN_SIZE
    GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY
    GL_RENDERBUFFER_BINDING_EXT
    GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV
    GL_SIGNED_ALPHA8_NV
    GL_RGBA_MODE
    GL_VERTEX_ATTRIB_ARRAY5_NV
    GL_INT_IMAGE_BUFFER
    GL_MAX_4D_TEXTURE_SIZE_SGIS
    GL_CLIP_DISTANCE6
    GL_READ_FRAMEBUFFER_EXT
    GL_OCCLUSION_TEST_RESULT_HP
    GL_BGRA
    GL_R11F_G11F_B10F
    GL_DRAW_INDIRECT_BUFFER
    GL_POST_CONVOLUTION_RED_BIAS_EXT
    GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS
    GL_OUTPUT_TEXTURE_COORD20_EXT
    GL_REFLECTION_MAP
    GL_MAX_FRAGMENT_IMAGE_UNIFORMS
    GL_TEXTURE_BLUE_TYPE_ARB
    GL_DEBUG_LOGGED_MESSAGES_ARB
    GL_LAST_VERTEX_CONVENTION
    GL_RESAMPLE_DECIMATE_OML
    GL_COLOR_ARRAY_STRIDE
    GL_CONVOLUTION_2D
    GL_PIXEL_MAP_B_TO_B
    GL_MAX_DEBUG_MESSAGE_LENGTH
    GL_FILTER
    GL_PIXEL_TRANSFORM_2D_EXT
    GL_DRAW_BUFFER14
    GL_QUERY_NO_WAIT_INVERTED
    GL_TEXTURE_BINDING_2D_ARRAY_EXT
    GL_HSL_LUMINOSITY_NV
    GL_HALF_FLOAT_NV
    GL_COLOR_TABLE_FORMAT
    GL_STENCIL_OP_VALUE_AMD
    GL_UNPACK_IMAGE_HEIGHT
    GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS
    GL_ALPHA16I_EXT
    GL_INT_SAMPLER_1D_ARRAY
    GL_ZERO_EXT
    GL_TEXTURE28
    GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS
    GL_COMPRESSED_RGBA_ASTC_12x12_KHR
    GL_BUFFER_STORAGE_FLAGS
    GL_RG8
    GL_IMAGE_3D_EXT
    GL_SAMPLER_1D_ARRAY_SHADOW_EXT
    GL_EXTENSIONS
    GL_RGB8
    GL_CLIP_PLANE4
    GL_REG_5_ATI
    GL_TEXTURE_COORD_ARRAY_POINTER
    GL_EXPAND_NEGATE_NV
    GL_RGBA8UI
    GL_SAMPLE_BUFFERS_ARB
    GL_COLOR_ATTACHMENT24
    GL_TEXTURE3_ARB
    GL_COMPRESSED_RGBA_ASTC_10x10_KHR
    GL_TEXTURE_STENCIL_SIZE
    GL_FOG_COORDINATE_ARRAY_POINTER_EXT
    GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL
    GL_RGBA16F
    GL_UNSIGNED_BYTE_2_3_3_REV
    GL_QUAD_INTENSITY8_SGIS
    GL_RGBA8I
    GL_YCRCB_422_SGIX
    GL_CONVOLUTION_HEIGHT_EXT
    GL_CURRENT_OCCLUSION_QUERY_ID_NV
    GL_MAX_TEXTURE_LOD_BIAS
    GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT
    GL_UNSIGNED_INT_IMAGE_1D_ARRAY
    GL_NORMAL_ARRAY_BUFFER_BINDING
    GL_MODULATE_SUBTRACT_ATI
    GL_SCISSOR_BOX
    GL_TEXTURE13
    GL_OR
    GL_ALL_COMPLETED_NV
    GL_UNIFORM_OFFSET
    GL_STENCIL_CLEAR_TAG_VALUE_EXT
    GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT
    GL_VERTEX_ATTRIB_ARRAY10_NV
    GL_LUMINANCE8_ALPHA8_EXT
    GL_TEXTURE_COORD_NV
    GL_DEBUG_CATEGORY_PERFORMANCE_AMD
    GL_LAST_VERTEX_CONVENTION_EXT
    GL_MATRIX22_ARB
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT
    GL_MAP1_VERTEX_3
    GL_TEXTURE_COLOR_WRITEMASK_SGIS
    GL_COMBINER4_NV
    GL_TRANSFORM_FEEDBACK_VARYINGS
    GL_QUERY_OBJECT_AMD
    GL_SHADER_TYPE
    GL_TEXTURE7_ARB
    GL_PROJECTION_MATRIX
    GL_VERTEX_ATTRIB_ARRAY2_NV
    GL_POINT_SMOOTH
    GL_RGB5_A1_EXT
    GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS
    GL_CONVOLUTION_2D_EXT
    GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH
    GL_YCRCB_444_SGIX
    GL_DRAW_BUFFER7_ATI
    GL_PROXY_TEXTURE_CUBE_MAP_EXT
    GL_RGB32UI
    GL_IMAGE_TRANSLATE_Y_HP
    GL_ARRAY_ELEMENT_LOCK_COUNT_EXT
    GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE
    GL_ALPHA_TEST_FUNC
    GL_CONTEXT_RELEASE_BEHAVIOR
    GL_STENCIL_INDEX
    GL_COLOR_ATTACHMENT10
    GL_ELEMENT_ARRAY_LENGTH_NV
    GL_SECONDARY_COLOR_NV
    GL_PATH_STROKE_WIDTH_NV
    GL_OBJECT_DISTANCE_TO_POINT_SGIS
    GL_HISTOGRAM_BLUE_SIZE
    GL_SAMPLE_MASK_VALUE_EXT
    GL_COMPRESSED_TEXTURE_FORMATS_ARB
    GL_NAME_LENGTH
    GL_INTENSITY_FLOAT32_APPLE
    GL_INVERSE_NV
    GL_LUMINANCE16_ALPHA16_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR
    GL_CLAMP_READ_COLOR
    GL_BLEND_COLOR_EXT
    GL_MULTISAMPLE_ARB
    GL_MAX_VERTEX_ATTRIB_BINDINGS
    GL_FUNC_REVERSE_SUBTRACT_EXT
    GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB
    GL_RGB_INTEGER
    GL_LUMINANCE_ALPHA32F_ARB
    GL_PIXEL_UNPACK_BUFFER
    GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE
    GL_RGB8_EXT
    GL_READ_ONLY_ARB
    GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV
    GL_SRGB_ALPHA
    GL_CONTEXT_FLAGS
    GL_ACTIVE_UNIFORM_BLOCKS
    GL_DRAW_BUFFER0_ARB
    GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV
    GL_SHADOW_AMBIENT_SGIX
    GL_COMPUTE_SUBROUTINE_UNIFORM
    GL_RASTERIZER_DISCARD_EXT
    GL_MOV_ATI
    GL_DOUBLE_MAT2x3
    GL_ONE_MINUS_SRC1_COLOR
    GL_TEXTURE_INTENSITY_SIZE_EXT
    GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR
    GL_TEXTURE8
    GL_AMBIENT_AND_DIFFUSE
    GL_PRIMITIVE_RESTART_INDEX_NV
    GL_INVARIANT_DATATYPE_EXT
    GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV
    GL_MANUAL_GENERATE_MIPMAP
    GL_QUERY_BY_REGION_WAIT_INVERTED
    GL_EXCLUSION_KHR
    GL_NORMALIZE
    GL_NATIVE_GRAPHICS_HANDLE_PGI
    GL_INTERNALFORMAT_RED_TYPE
    GL_VERTEX_PROGRAM_POINT_SIZE
    GL_RG16
    GL_OP_MAX_EXT
    GL_TEXTURE_SWIZZLE_G
    GL_IMAGE_CLASS_4_X_32
    GL_TRANSPOSE_TEXTURE_MATRIX_ARB
    GL_TEXTURE26_ARB
    GL_VERTEX_STREAM3_ATI
    GL_FILE_NAME_NV
    GL_LUMINANCE_ALPHA8UI_EXT
    GL_OP_EXP_BASE_2_EXT
    GL_N3F_V3F
    GL_TEXTURE_COORD_ARRAY_TYPE_EXT
    GL_MAX_GEOMETRY_INPUT_COMPONENTS
    GL_RGB2_EXT
    GL_RGBA12_EXT
    GL_BUFFER_MAP_POINTER
    GL_DEPTH24_STENCIL8_EXT
    GL_DEPTH_COMPONENT32
    GL_ALPHA32F_ARB
    GL_MAX_NUM_COMPATIBLE_SUBROUTINES
    GL_DEBUG_TYPE_POP_GROUP_KHR
    GL_LINK_STATUS
    GL_UNPACK_SUBSAMPLE_RATE_SGIX
    GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM
    GL_FLOAT_RGB32_NV
    GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV
    GL_CND0_ATI
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT
    GL_GREEN_INTEGER
    GL_OP_SUB_EXT
    GL_ALLOW_DRAW_MEM_HINT_PGI
    GL_TEXTURE_COORD_ARRAY_ADDRESS_NV
    GL_PARALLEL_ARRAYS_INTEL
    GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE
    GL_OFFSET_TEXTURE_RECTANGLE_NV
    GL_R16
    GL_POINT_SIZE_MAX_EXT
    GL_LUMINANCE
    GL_INTENSITY8
    GL_MAX_HEIGHT
    GL_INT_SAMPLER_1D
    GL_TESS_CONTROL_TEXTURE
    GL_DEBUG_SEVERITY_LOW_ARB
    GL_ALPHA_FLOAT16_ATI
    GL_UNSIGNED_SHORT_4_4_4_4_EXT
    GL_WEIGHT_SUM_UNITY_ARB
    GL_RGB9_E5
    GL_SPARE0_NV
    GL_SIGNED_HILO_NV
    GL_MAX_DEBUG_LOGGED_MESSAGES
    GL_POST_CONVOLUTION_BLUE_SCALE
    GL_MAP2_TEXTURE_COORD_3
    GL_MAP_STENCIL
    GL_ELEMENT_ARRAY_BUFFER
    GL_ALREADY_SIGNALED
    GL_DOUBLE_VEC2_EXT
    GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL
    GL_MODULATE_ADD_ATI
    GL_OBJECT_SHADER_SOURCE_LENGTH_ARB
    GL_TEXTURE24_ARB
    GL_UNSIGNED_INT_SAMPLER_1D
    GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX
    GL_MIN_MAP_BUFFER_ALIGNMENT
    GL_MODELVIEW0_ARB
    GL_NICEST
    GL_PIXEL_MAP_A_TO_A
    GL_MAX_CONVOLUTION_WIDTH_EXT
    GL_AMBIENT
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR
    GL_ALPHA16F_ARB
    GL_ONE_MINUS_DST_COLOR
    GL_MAX_VERTEX_ATTRIBS
    GL_OBJECT_SUBTYPE_ARB
    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB
    GL_RGBA32F_ARB
    GL_VIEW_CLASS_S3TC_DXT5_RGBA
    GL_SRGB8_ALPHA8
    GL_3D_COLOR_TEXTURE
    GL_MULTISAMPLE_LINE_WIDTH_RANGE_ARB
    GL_PIXEL_MAP_I_TO_I_SIZE
    GL_SAMPLER_2D_MULTISAMPLE
    GL_UNSIGNED_INT_IMAGE_CUBE
    GL_DEPTH_STENCIL_TO_RGBA_NV
    GL_SAMPLE_ALPHA_TO_ONE_ARB
    GL_DECR
    GL_HILO16_NV
    GL_COMPRESSED_ALPHA_ARB
    GL_TRANSLATE_3D_NV
    GL_COLOR_MATERIAL_PARAMETER
    GL_LINEAR_ATTENUATION
    GL_MAP1_VERTEX_ATTRIB7_4_NV
    GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB
    GL_PATH_DASH_OFFSET_NV
    GL_GENERATE_MIPMAP_HINT_SGIS
    GL_REPLICATE_BORDER_HP
    GL_SECONDARY_COLOR_ARRAY
    GL_DRAW_INDIRECT_LENGTH_NV
    GL_FENCE_STATUS_NV
    GL_COVERAGE_MODULATION_TABLE_SIZE_NV
    GL_DEBUG_SEVERITY_HIGH_KHR
    GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV
    GL_MAP2_VERTEX_ATTRIB12_4_NV
    GL_RG8I
    GL_MITER_TRUNCATE_NV
    GL_RGB32I_EXT
    GL_COMBINER1_NV
    GL_GREEN_NV
    GL_SAMPLER_BUFFER_AMD
    GL_INTERNALFORMAT_STENCIL_TYPE
    GL_LIGHT4
    GL_STATIC_COPY
    GL_MODELVIEW1_ARB
    GL_POST_CONVOLUTION_BLUE_BIAS_EXT
    GL_INT_SAMPLER_CUBE_EXT
    GL_VERTEX_ARRAY_BUFFER_BINDING
    GL_R32UI
    GL_FRAGMENT_COVERAGE_COLOR_NV
    GL_SINGLE_COLOR
    GL_REFERENCED_BY_GEOMETRY_SHADER
    GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX
    GL_NUM_PROGRAM_BINARY_FORMATS
    GL_FRAME_NV
    GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB
    GL_OP_CLAMP_EXT
    GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB
    GL_REG_15_ATI
    GL_REPLACE_EXT
    GL_YCBCR_422_APPLE
    GL_VERTEX_BINDING_STRIDE
    GL_SAMPLE_BUFFERS
    GL_TEXTURE_ALPHA_TYPE
    GL_STACK_UNDERFLOW
    GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT
    GL_OUTPUT_TEXTURE_COORD5_EXT
    GL_MODELVIEW0_EXT
    GL_TEXTURE5_ARB
    GL_TEXTURE_BUFFER_EXT
    GL_VERTEX_STATE_PROGRAM_NV
    GL_STENCIL_BACK_FAIL_ATI
    GL_EYE_DISTANCE_TO_POINT_SGIS
    GL_POINTS
    GL_GREEN_MIN_CLAMP_INGR
    GL_COUNT_DOWN_NV
    GL_DOUBLE_MAT2_EXT
    GL_DIFFUSE
    GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH
    GL_ATOMIC_COUNTER_BUFFER_BINDING
    GL_PIXEL_PACK_BUFFER_BINDING_ARB
    GL_TESS_GEN_MODE
    GL_TEXTURE_LOD_BIAS_S_SGIX
    GL_OUTPUT_TEXTURE_COORD12_EXT
    GL_DS_SCALE_NV
    GL_POINT_SIZE_GRANULARITY
    GL_NUM_SHADING_LANGUAGE_VERSIONS
    GL_DUAL_LUMINANCE4_SGIS
    GL_REDUCE_EXT
    GL_MAX_UNIFORM_BUFFER_BINDINGS
    GL_COLOR_ENCODING
    GL_LIGHT5
    GL_MODELVIEW1_MATRIX_EXT
    GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV
    GL_IUI_V3F_EXT
    GL_FLOAT_RGBA32_NV
    GL_RENDERBUFFER_WIDTH
    GL_RED_SCALE
    GL_UNSIGNED_NORMALIZED
    GL_INDEX_TEST_EXT
    GL_ATTRIB_ARRAY_TYPE_NV
    GL_UNCORRELATED_NV
    GL_T2F_C3F_V3F
    GL_GREEN_BIAS
    GL_COMPRESSED_SRGB8_ETC2
    GL_MAX_COMBINED_ATOMIC_COUNTERS
    GL_STORAGE_CLIENT_APPLE
    GL_ACCUM_ALPHA_BITS
    GL_TESS_CONTROL_SUBROUTINE_UNIFORM
    GL_PROGRAM_PIPELINE_KHR
    GL_POLYGON_SMOOTH_HINT
    GL_SMOOTH
    GL_ARRAY_STRIDE
    GL_WARPS_PER_SM_NV
    GL_GEOMETRY_SHADER_INVOCATIONS
    GL_DEPTH32F_STENCIL8
    GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV
    GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX
    GL_COORD_REPLACE_ARB
    GL_PACK_SKIP_PIXELS
    GL_RGB32UI_EXT
    GL_LINE_TOKEN
    GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV
    GL_BLUE_SCALE
    GL_TEXTURE_GATHER_SHADOW
    GL_LINE
    GL_PATH_FORMAT_PS_NV
    GL_COLOR_SUM_CLAMP_NV
    GL_PROGRAM_FORMAT_ASCII_ARB
    GL_R1UI_V3F_SUN
    GL_NUM_FRAGMENT_CONSTANTS_ATI
    GL_COLOR_ATTACHMENT13_EXT
    GL_DEBUG_CALLBACK_USER_PARAM_KHR
    GL_FRAMEBUFFER_SRGB_EXT
    GL_OP_MIN_EXT
    GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
    GL_FRONT_FACE
    GL_BGR_INTEGER_EXT
    GL_GEOMETRY_OUTPUT_TYPE_EXT
    GL_MIN
    GL_COLOR_TABLE_LUMINANCE_SIZE_SGI
    GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV
    GL_TEXTURE_ENV_BIAS_SGIX
    GL_PROGRAM_POINT_SIZE_EXT
    GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI
    GL_VIRTUAL_PAGE_SIZE_X_AMD
    GL_FLOAT_CLEAR_COLOR_VALUE_NV
    GL_POINT_SIZE_MAX
    GL_SWIZZLE_STR_ATI
    GL_INDEX_ARRAY_POINTER_EXT
    GL_SHADER_COMPILER
    GL_VERTEX_BINDING_BUFFER
    GL_STATIC_DRAW
    GL_AND_INVERTED
    GL_SAMPLE_COVERAGE
    GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS
    GL_IMAGE_CUBE_MAP_ARRAY
    GL_PROGRAM_OUTPUT
    GL_OUTPUT_TEXTURE_COORD2_EXT
    GL_MAX_VERTEX_UNITS_ARB
    GL_LINEAR_CLIPMAP_LINEAR_SGIX
    GL_VERTEX_ATTRIB_ARRAY13_NV
    GL_MAX_COMPUTE_SHARED_MEMORY_SIZE
    GL_DEBUG_CALLBACK_USER_PARAM
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT
    GL_PALETTE4_RGB5_A1_OES
    GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV
    GL_LINEAR
    GL_BLEND_PREMULTIPLIED_SRC_NV
    GL_TEXTURE_ENV
    GL_MAX_COLOR_TEXTURE_SAMPLES
    GL_INDEX_ARRAY_BUFFER_BINDING_ARB
    GL_EYE_RADIAL_NV
    GL_INDEX_ARRAY_LENGTH_NV
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER
    GL_TEXTURE_DEFORMATION_SGIX
    GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER
    GL_PIXEL_UNPACK_BUFFER_BINDING
    GL_SHADER_IMAGE_LOAD
    GL_MAP1_GRID_DOMAIN
    GL_VIEWPORT_SWIZZLE_W_NV
    GL_STRICT_SCISSOR_HINT_PGI
    GL_FRAMEBUFFER_SRGB
    GL_MAP2_VERTEX_ATTRIB7_4_NV
    GL_MAP2_VERTEX_ATTRIB8_4_NV
    GL_EXCLUSION_NV
    GL_STENCIL_FAIL
    GL_NORMAL_ARRAY
    GL_PATCH_DEFAULT_OUTER_LEVEL
    GL_TEXTURE_RECTANGLE
    GL_CON_2_ATI
    GL_COLOR_ATTACHMENT16
    GL_MAX_TEXTURE_BUFFER_SIZE_ARB
    GL_DRAW_FRAMEBUFFER_BINDING_EXT
    GL_DEBUG_SEVERITY_LOW_AMD
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT
    GL_PATH_INITIAL_END_CAP_NV
    GL_FOG_END
    GL_BUFFER_VARIABLE
    GL_LINEAR_SHARPEN_SGIS
    GL_CLEAR
    GL_NUM_WINDOW_RECTANGLES_EXT
    GL_MATRIX2_ARB
    GL_COMPRESSED_RED_RGTC1_EXT
    GL_PATH_OBJECT_BOUNDING_BOX_NV
    GL_TEXTURE_WRAP_S
    GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET
    GL_FRAMEZOOM_SGIX
    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING
    GL_COLOR_ATTACHMENT0_EXT
    GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV
    GL_ADD
    GL_PATH_PROJECTION_STACK_DEPTH_NV
    GL_DEFORMATIONS_MASK_SGIX
    GL_DEPTH_CLEAR_VALUE
    GL_R8UI
    GL_UNSIGNED_INT_SAMPLER_CUBE
    GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
    GL_TEXTURE2_ARB
    GL_POLYGON_OFFSET_EXT
    GL_UNSIGNED_INT_SAMPLER_2D_RECT
    GL_RGBA_SNORM
    GL_FOG_OFFSET_VALUE_SGIX
    GL_VIEWPORT
    GL_MAX_VERTEX_ATTRIB_STRIDE
    GL_VERTEX_ATTRIB_ARRAY12_NV
    GL_DYNAMIC_READ
    GL_PROXY_COLOR_TABLE
    GL_VERTEX_CONSISTENT_HINT_PGI
    GL_PACK_IMAGE_HEIGHT
    GL_INDEX_ARRAY_STRIDE
    GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES
    GL_MODELVIEW8_ARB
    GL_FOG_COORDINATE_ARRAY_LIST_IBM
    GL_PIXEL_COUNT_NV
    GL_FLOAT_RGBA16_NV
    GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST
    GL_DEPTH_RANGE
    GL_QUERY_RESULT_NO_WAIT
    GL_VARIABLE_F_NV
    GL_COLOR_ATTACHMENT5
    GL_COLORBURN_KHR
    GL_CONVOLUTION_FILTER_BIAS
    GL_EVAL_VERTEX_ATTRIB10_NV
    GL_CUBIC_EXT
    GL_RGB16I
    GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT
    GL_INT_SAMPLER_2D_ARRAY_EXT
    GL_LIGHT2
    GL_LUMINANCE_ALPHA16I_EXT
    GL_MAP2_VERTEX_ATTRIB11_4_NV
    GL_PATH_PROJECTION_NV
    GL_RASTER_MULTISAMPLE_EXT
    GL_DEBUG_SEVERITY_NOTIFICATION
    GL_MAX_DRAW_BUFFERS_ATI
    GL_SAMPLE_MASK_NV
    GL_GEOMETRY_PROGRAM_NV
    GL_OUTPUT_TEXTURE_COORD21_EXT
    GL_V3F
    GL_COMPUTE_PROGRAM_NV
    GL_EVAL_TRIANGULAR_2D_NV
    GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB
    GL_COMPARE_REF_TO_TEXTURE
    GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT
    GL_BLUE_INTEGER
    GL_MAX_DEBUG_GROUP_STACK_DEPTH
    GL_UNSIGNED_BYTE_3_3_2
    GL_INTERLACE_SGIX
    GL_COMPRESSED_SRGB_EXT
    GL_LUMINANCE_ALPHA32I_EXT
    GL_DUAL_LUMINANCE_ALPHA4_SGIS
    GL_PARTIAL_SUCCESS_NV
    GL_PIXEL_COUNT_AVAILABLE_NV
    GL_MAX_PATCH_VERTICES
    GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT
    GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV
    GL_NORMAL_ARRAY_LIST_STRIDE_IBM
    GL_LINE_STIPPLE_PATTERN
    GL_NORMAL_ARRAY_STRIDE
    GL_MULTISAMPLE_3DFX
    GL_RGBA16UI_EXT
    GL_R1UI_T2F_V3F_SUN
    GL_FOG_DISTANCE_MODE_NV
    GL_TEXTURE_VIEW
    GL_DRAW_BUFFER5
    GL_COLOR_TABLE_ALPHA_SIZE
    GL_STENCIL_INDEX4_EXT
    GL_FLOAT_RGB_NV
    GL_DUAL_ALPHA16_SGIS
    GL_OBJECT_ACTIVE_UNIFORMS_ARB
    GL_AUX3
    GL_SELECT
    GL_LUMINANCE12
    GL_FOG_COORDINATE_ARRAY
    GL_FORCE_BLUE_TO_ONE_NV
    GL_MAX_RENDERBUFFER_SIZE
    GL_PIXEL_MAP_I_TO_B
    GL_REPLACE
    GL_DRAW_BUFFER8_ARB
    GL_PIXEL_TILE_HEIGHT_SGIX
    GL_EDGE_FLAG_ARRAY_LIST_IBM
    GL_BLEND_SRC_RGB_EXT
    GL_FUNC_SUBTRACT
    GL_COLOR_ARRAY_POINTER
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER
    GL_READ_PIXEL_DATA_RANGE_LENGTH_NV
    GL_INT8_VEC4_NV
    GL_UNPACK_CONSTANT_DATA_SUNX
    GL_COORD_REPLACE_NV
    GL_DEPTH_ATTACHMENT
    GL_MAX_FRAMEBUFFER_SAMPLES
    GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB
    GL_READ_WRITE
    GL_DEBUG_TYPE_POP_GROUP
    GL_SAMPLE_POSITION
    GL_MINUS_CLAMPED_NV
    GL_STENCIL_PASS_DEPTH_PASS
    GL_TESS_CONTROL_SUBROUTINE
    GL_SECONDARY_COLOR_ARRAY_POINTER
    GL_DEBUG_OUTPUT_SYNCHRONOUS_KHR
    GL_PATH_STROKE_MASK_NV
    GL_OUTPUT_TEXTURE_COORD26_EXT
    GL_PROXY_TEXTURE_COLOR_TABLE_SGI
    GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB
    GL_XOR_NV
    GL_TEXTURE_SHADOW
    GL_FRAGMENT_COLOR_MATERIAL_SGIX
    GL_PHONG_WIN
    GL_NORMAL_MAP_ARB
    GL_MAX_ARRAY_TEXTURE_LAYERS
    GL_SPRITE_TRANSLATION_SGIX
    GL_PIXEL_PACK_BUFFER
    GL_DS_BIAS_NV
    GL_INDEX_ARRAY_ADDRESS_NV
    GL_CON_13_ATI
    GL_OUTPUT_TEXTURE_COORD16_EXT
    GL_UNSIGNED_INT_5_9_9_9_REV_EXT
    GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB
    GL_MATRIX18_ARB
    GL_OP_SET_LT_EXT
    GL_HIGH_INT
    GL_MAX_VARYING_VECTORS
    GL_CURRENT_ATTRIB_NV
    GL_OUTPUT_TEXTURE_COORD0_EXT
    GL_POST_COLOR_MATRIX_ALPHA_SCALE
    GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX
    GL_REG_16_ATI
    GL_REFERENCED_BY_COMPUTE_SHADER
    GL_DRAW_BUFFER9
    GL_COMPRESSED_RGBA_ASTC_6x6_KHR
    GL_Q
    GL_INT_SAMPLER_2D_ARRAY
    GL_BLEND_SRC_RGB
    GL_FLOAT16_VEC2_NV
    GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB
    GL_PIXEL_MIN_FILTER_EXT
    GL_LIGHT_MODEL_TWO_SIDE
    GL_RGB16UI_EXT
    GL_COMPRESSED_LUMINANCE_ALPHA_ARB
    GL_TEXTURE3
    GL_PROXY_TEXTURE_1D_STACK_MESAX
    GL_PACK_SUBSAMPLE_RATE_SGIX
    GL_INDEX_BITS
    GL_MAX_TESS_PATCH_COMPONENTS
    GL_DEBUG_OUTPUT_KHR
    GL_RENDER
    GL_TEXTURE_INTENSITY_SIZE
    GL_ONE_MINUS_SRC_ALPHA
    GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB
    GL_DEBUG_SOURCE_THIRD_PARTY_ARB
    GL_COLOR_ATTACHMENT18
    GL_MODELVIEW13_ARB
    GL_MAP2_VERTEX_ATTRIB9_4_NV
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY
    GL_SAMPLE_ALPHA_TO_ONE_SGIS
    GL_QUAD_LUMINANCE4_SGIS
    GL_DRAW_BUFFER7
    GL_LINE_LOOP
    GL_TEXTURE_RANGE_POINTER_APPLE
    GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING
    GL_MAP2_VERTEX_ATTRIB15_4_NV
    GL_DRAW_PIXEL_TOKEN
    GL_QUERY_RESULT
    GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS
    GL_STACK_OVERFLOW_KHR
    GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE
    GL_MODELVIEW11_ARB
    GL_MAX_DEBUG_MESSAGE_LENGTH_KHR
    GL_MAP1_VERTEX_ATTRIB14_4_NV
    GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS
    GL_HARDLIGHT_KHR
    GL_DYNAMIC_COPY_ARB
    GL_WRITE_ONLY_ARB
    GL_SAMPLE_COVERAGE_INVERT_ARB
    GL_MAP2_VERTEX_ATTRIB0_4_NV
    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB
    GL_TEXTURE16_ARB
    GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS
    GL_COMPRESSED_RGBA_FXT1_3DFX
    GL_HISTOGRAM_FORMAT
    GL_TRANSFORM_FEEDBACK_RECORD_NV
    GL_R8I
    GL_UNIFORM
    GL_CLIP_PLANE0
    GL_REG_29_ATI
    GL_IMAGE_1D_ARRAY_EXT
    GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB
    GL_BEVEL_NV
    GL_MAX_COMPUTE_WORK_GROUP_COUNT
    GL_INTENSITY32UI_EXT
    GL_CON_4_ATI
    GL_RETURN
    GL_COMPRESSED_LUMINANCE_LATC1_EXT
    GL_MAP2_NORMAL
    GL_VERTEX_ATTRIB_ARRAY9_NV
    GL_TEXTURE_DEPTH_TYPE
    GL_INTERLACE_OML
    GL_TEXTURE_3D
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT
    GL_ACTIVE_ATTRIBUTE_MAX_LENGTH
    GL_BLOCK_INDEX
    GL_SHADER_STORAGE_BUFFER_SIZE
    GL_TRIANGLE_FAN
    GL_EVAL_VERTEX_ATTRIB15_NV
    GL_SHADER_STORAGE_BUFFER
    GL_POLYGON_OFFSET_FACTOR
    GL_COLOR_SUM
    GL_ELEMENT_ARRAY_UNIFIED_NV
    GL_NO_RESET_NOTIFICATION_KHR
    GL_TEXTURE4
    GL_BLEND_EQUATION_EXT
    GL_SUB_ATI
    GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR
    GL_RGBA8_EXT
    GL_FOG_COORD_ARRAY
    GL_PATH_STROKE_BOUNDING_BOX_NV
    GL_PROGRAM_PIPELINE_OBJECT_EXT
    GL_DATA_BUFFER_AMD
    GL_CONVOLUTION_BORDER_COLOR
    GL_ALPHA_SCALE
    GL_MAP_COLOR
    GL_POST_CONVOLUTION_RED_BIAS
    GL_HILO_NV
    GL_COLOR_TABLE_RED_SIZE
    GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM
    GL_ALIASED_LINE_WIDTH_RANGE
    GL_RGB8UI
    GL_COLOR_WRITEMASK
    GL_VIDEO_CAPTURE_FRAME_WIDTH_NV
    GL_PHONG_HINT_WIN
    GL_INTENSITY8I_EXT
    GL_UNSIGNED_SHORT_4_4_4_4
    GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH
    GL_LUMINANCE_SNORM
    GL_MODELVIEW18_ARB
    GL_INT_IMAGE_1D_ARRAY_EXT
    GL_PRIMITIVE_BOUNDING_BOX_ARB
    GL_STENCIL_TAG_BITS_EXT
    GL_VIRTUAL_PAGE_SIZE_Z_ARB
    GL_E_TIMES_F_NV
    GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB
    GL_COLOR_LOGIC_OP
    GL_PROGRAM_PARAMETER_NV
    GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS
    GL_FOG_COORDINATE_SOURCE
    GL_REFERENCE_PLANE_SGIX
    GL_DEPTH_COMPONENT
    GL_CONSTANT_COLOR
    GL_DEBUG_SOURCE_THIRD_PARTY
    GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS
    GL_SWIZZLE_STRQ_ATI
    GL_SRGB8
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR
    GL_TRANSPOSE_PROJECTION_MATRIX
    GL_VERTEX_ATTRIB_ARRAY11_NV
    GL_POST_COLOR_MATRIX_RED_BIAS
    GL_INDEX_WRITEMASK
    GL_RENDERBUFFER_BINDING
    GL_STENCIL_INDEX16_EXT
    GL_MAX_FRAGMENT_INPUT_COMPONENTS
    GL_INTERNALFORMAT_SUPPORTED
    GL_FRAGMENT_LIGHT4_SGIX
    GL_SAMPLE_COVERAGE_VALUE
    GL_Z4Y12Z4CB12Z4CR12_444_NV
    GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX
    GL_VERTEX_SHADER_EXT
    GL_PIXEL_MAP_S_TO_S
    GL_MAX_CLIP_DISTANCES
    GL_PROGRAM_ERROR_STRING_NV
    GL_NEAREST_MIPMAP_NEAREST
    GL_PATH_DASH_OFFSET_RESET_NV
    GL_POINT_FADE_THRESHOLD_SIZE_ARB
    GL_TEXTURE9
    GL_COMPATIBLE_SUBROUTINES
    GL_STREAM_READ_ARB
    GL_BUFFER_ACCESS_FLAGS
    GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI
    GL_COMPUTE_WORK_GROUP_SIZE
    GL_INT_2_10_10_10_REV
    GL_PIXEL_TILE_CACHE_SIZE_SGIX
    GL_IMAGE_2D_ARRAY
    GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB
    GL_MAX_VERTEX_UNIFORM_BLOCKS
    GL_PRIMARY_COLOR_NV
    GL_TEXTURE9_ARB
    GL_TEXTURE_SWIZZLE_A
    GL_DOUBLE_VEC4_EXT
    GL_TEXTURE_1D_ARRAY
    GL_TEXTURE24
    GL_INT16_VEC2_NV
    GL_MAX_INTEGER_SAMPLES
    GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX
    GL_VERTEX_SHADER_VARIANTS_EXT
    GL_VERTEX_PROGRAM_TWO_SIDE
    GL_CLAMP_TO_EDGE
    GL_TESS_EVALUATION_SUBROUTINE
    GL_DYNAMIC_ATI
    GL_COLOR_ATTACHMENT14
    GL_DISCRETE_AMD
    GL_DSDT_MAG_INTENSITY_NV
    GL_PER_STAGE_CONSTANTS_NV
    GL_COLOR_TABLE_INTENSITY_SIZE
    GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT
    GL_CLIP_DISTANCE3
    GL_DOT3_RGB_EXT
    GL_MAP_ATTRIB_U_ORDER_NV
    GL_RGB4_EXT
    GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE
    GL_PATH_JOIN_STYLE_NV
    GL_R1UI_N3F_V3F_SUN
    GL_PIXEL_PACK_BUFFER_BINDING
    GL_MAX_CONVOLUTION_HEIGHT_EXT
    GL_FIRST_VERTEX_CONVENTION
    GL_UNSIGNED_INT_SAMPLER_2D_EXT
    GL_ACCUM
    GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS
    GL_TEXTURE_BINDING_2D_ARRAY
    GL_ARRAY_OBJECT_OFFSET_ATI
    GL_W_EXT
    GL_RGBA_FLOAT32_APPLE
    GL_DOT3_RGBA_EXT
    GL_IMAGE_CLASS_1_X_16
    GL_PATH_COORD_COUNT_NV
    GL_UNIFORM_BUFFER_LENGTH_NV
    GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL
    GL_TEXTURE_MAX_CLAMP_S_SGIX
    GL_GEOMETRY_VERTICES_OUT_ARB
    GL_RENDERBUFFER_RED_SIZE
    GL_LIGHT_MODEL_COLOR_CONTROL
    GL_MAX_TEXTURE_UNITS
    GL_MIRRORED_REPEAT
    GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER
    GL_TYPE
    GL_SAMPLE_LOCATION_NV
    GL_DEPTH_COMPONENT24_SGIX
    GL_ALPHA16_SNORM
    GL_CON_19_ATI
    GL_REFLECTION_MAP_NV
    GL_HSL_SATURATION_KHR
    GL_INDEX_MATERIAL_PARAMETER_EXT
    GL_INNOCENT_CONTEXT_RESET_ARB
    GL_ATTRIB_ARRAY_SIZE_NV
    GL_MAX_PIXEL_MAP_TABLE
    GL_PROGRAM_POINT_SIZE_ARB
    GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI
    GL_INDEX_MODE
    GL_REG_27_ATI
    GL_TEXTURE_BASE_LEVEL
    GL_SHADER_STORAGE_BUFFER_START
    GL_PATCH_VERTICES
    GL_DEBUG_CALLBACK_USER_PARAM_ARB
    GL_MATRIX23_ARB
    GL_RGB5_A1
    GL_RGB8I_EXT
    GL_TRANSFORM_FEEDBACK_VARYINGS_NV
    GL_LIST_BASE
    GL_TEXTURE_RECTANGLE_ARB
    GL_HISTOGRAM_LUMINANCE_SIZE_EXT
    GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT
    GL_INCLUSIVE_EXT
    GL_R1UI_T2F_N3F_V3F_SUN
    GL_REG_0_ATI
    GL_RGB10_A2
    GL_DEPENDENT_RGB_TEXTURE_3D_NV
    GL_GEOMETRY_SHADER_EXT
    GL_TEXTURE_UNSIGNED_REMAP_MODE_NV
    GL_PN_TRIANGLES_POINT_MODE_ATI
    GL_COMBINER_SUM_OUTPUT_NV
    GL_MAX_CLIP_PLANES
    GL_SECONDARY_COLOR_ARRAY_LENGTH_NV
    GL_FRAGMENT_LIGHT6_SGIX
    GL_BUFFER_FLUSHING_UNMAP_APPLE
    GL_VIEW_CLASS_8_BITS
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT
    GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT
    GL_LUMINANCE_FLOAT16_ATI
    GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV
    GL_DRAW_BUFFER4
    GL_NUM_FRAGMENT_REGISTERS_ATI
    GL_3_BYTES
    GL_TEXTURE_BINDING_1D_ARRAY_EXT
    GL_PATH_GEN_COLOR_FORMAT_NV
    GL_POINT_SPRITE_ARB
    GL_VERTEX_ARRAY_COUNT_EXT
    GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
    GL_FLOAT_R16_NV
    GL_ALPHA8I_EXT
    GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    GL_MAX_SPARSE_TEXTURE_SIZE_ARB
    GL_DOT3_ATI
    GL_OFFSET
    GL_SHADER_IMAGE_STORE
    GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS
    GL_MODELVIEW6_ARB
    GL_MAX_ELEMENTS_INDICES
    GL_UNIFORM_ARRAY_STRIDE
    GL_BUMP_ENVMAP_ATI
    GL_EDGE_FLAG_ARRAY_COUNT_EXT
    GL_HSL_HUE_KHR
    GL_T2F_C4UB_V3F
    GL_LUMINANCE16
    GL_DEPTH_RENDERABLE
    GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB
    GL_FILL_RECTANGLE_NV
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE
    GL_TEXTURE_FLOAT_COMPONENTS_NV
    GL_DOUBLE_VEC4
    GL_MAX_TEXTURE_LOD_BIAS_EXT
    GL_RGB16F_ARB
    GL_LINE_RESET_TOKEN
    GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT
    GL_GREEN_MAX_CLAMP_INGR
    GL_TEXTURE_GREEN_TYPE_ARB
    GL_CON_16_ATI
    GL_MAP1_NORMAL
    GL_STANDARD_FONT_NAME_NV
    GL_CONSERVATIVE_RASTER_DILATE_NV
    GL_COLORDODGE_KHR
    GL_COLOR_ATTACHMENT29
    GL_TEXTURE_BINDING_BUFFER
    GL_COMPRESSED_RGB_S3TC_DXT1_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR
    GL_BYTE
    GL_RGB8UI_EXT
    GL_NORMALIZED_RANGE_EXT
    GL_CONSTANT_ATTENUATION
    GL_OFFSET_TEXTURE_BIAS_NV
    GL_BUFFER_SERIALIZED_MODIFY_APPLE
    GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT
    GL_BLUE_BIAS
    GL_COLOR_ATTACHMENT10_EXT
    GL_FRACTIONAL_ODD
    GL_PIXEL_SUBSAMPLE_2424_SGIX
    GL_MODELVIEW12_ARB
    GL_TEXTURE_LOD_BIAS_T_SGIX
    GL_CURRENT_COLOR
    GL_SLUMINANCE_EXT
    GL_FENCE_APPLE
    GL_DEBUG_TYPE_PORTABILITY_KHR
    GL_BUMP_NUM_TEX_UNITS_ATI
    GL_DRAW_BUFFER12_ATI
    GL_PARAMETER_BUFFER_BINDING_ARB
    GL_PROXY_TEXTURE_1D_ARRAY
    GL_MAX_COMPUTE_UNIFORM_COMPONENTS
    GL_VERTEX_PRECLIP_SGIX
    GL_CONTEXT_ROBUST_ACCESS
    GL_COLOR_TABLE
    GL_TEXTURE19_ARB
    GL_TEXTURE26
    GL_COLOR_ATTACHMENT9
    GL_VERTEX_SUBROUTINE
    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB
    GL_VERTEX_ATTRIB_ARRAY0_NV
    GL_COMPRESSED_RG_RGTC2
    GL_ELEMENT_ARRAY_POINTER_ATI
    GL_MAP1_INDEX
    GL_SET_AMD
    GL_EQUAL
    GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
    GL_RED_NV
    GL_INT_SAMPLER_2D_RECT
    GL_COUNTER_TYPE_AMD
    GL_TEXTURE_STACK_DEPTH
    GL_QUERY_BUFFER_AMD
    GL_TEXTURE_NORMAL_EXT
    GL_CONTRAST_NV
    GL_FOG_COLOR
    GL_DISTANCE_ATTENUATION_SGIS
    GL_DEPTH_SCALE
    GL_VERTEX_TEXTURE
    GL_COLOR_ATTACHMENT28
    GL_PERFQUERY_COUNTER_EVENT_INTEL
    GL_STENCIL_TEST_TWO_SIDE_EXT
    GL_MAP2_VERTEX_ATTRIB13_4_NV
    GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT
    GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT
    GL_SHADER_INCLUDE_ARB
    GL_WEIGHT_ARRAY_SIZE_ARB
    GL_REG_6_ATI
    GL_DISCARD_ATI
    GL_BITMAP
    GL_STENCIL_ATTACHMENT_EXT
    GL_COLOR_TABLE_BIAS_SGI
    GL_CON_27_ATI
    GL_MULTISAMPLE_SGIS
    GL_TRANSFORM_FEEDBACK_BUFFER_START
    GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS
    GL_SIGNED_HILO8_NV
    GL_TEXTURE_RED_TYPE_ARB
    GL_TEXTURE_BORDER_COLOR
    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH
    GL_UNPACK_SWAP_BYTES
    GL_PIXEL_MAP_G_TO_G_SIZE
    GL_SAMPLER_2D_ARRAY
    GL_CLAMP_VERTEX_COLOR_ARB
    GL_READ_WRITE_ARB
    GL_LUMINANCE16_ALPHA16
    GL_SAMPLER_BINDING
    GL_AUTO_GENERATE_MIPMAP
    GL_AUX_DEPTH_STENCIL_APPLE
    GL_SWIZZLE_STQ_DQ_ATI
    GL_LUMINANCE4_EXT
    GL_INT_IMAGE_2D_EXT
    GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS
    GL_INT
    GL_R16_SNORM
    GL_MAX_PROGRAM_LOOP_DEPTH_NV
    GL_DUAL_ALPHA8_SGIS
    GL_FEEDBACK_BUFFER_POINTER
    GL_COVERAGE_MODULATION_TABLE_NV
    GL_ALPHA16_EXT
    GL_LOAD
    GL_COLORBURN_NV
    GL_DOUBLE_MAT2x4_EXT
    GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS
    GL_INT_IMAGE_3D_EXT
    GL_VERTEX_PROGRAM_BINDING_NV
    GL_FOG_COORDINATE_EXT
    GL_EMISSION
    GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV
    GL_VERTEX_STREAM4_ATI
    GL_NORMAL_ARRAY_BUFFER_BINDING_ARB
    GL_IMAGE_CLASS_2_X_16
    GL_STRICT_DEPTHFUNC_HINT_PGI
    GL_CLIP_DISTANCE2
    GL_T2F_C4F_N3F_V3F
    GL_CURRENT_TIME_NV
    GL_TEXTURE_LUMINANCE_TYPE
    GL_VIEW_CLASS_S3TC_DXT1_RGB
    GL_ACCUM_CLEAR_VALUE
    GL_MODELVIEW24_ARB
    GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT
    GL_MAX_MAP_TESSELLATION_NV
    GL_HISTOGRAM_RED_SIZE
    GL_FOG_COORDINATE_ARRAY_STRIDE
    GL_NEVER
    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET
    GL_MAX_FRAMEBUFFER_HEIGHT
    GL_POST_CONVOLUTION_COLOR_TABLE_SGI
    GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX
    GL_TRIANGLE_STRIP_ADJACENCY
    GL_DEBUG_TYPE_ERROR_KHR
    GL_TEXTURE_3D_BINDING_EXT
    GL_TEXTURE_COVERAGE_SAMPLES_NV
    GL_ATOMIC_COUNTER_BUFFER_INDEX
    GL_AUX0
    GL_HSL_COLOR_KHR
    GL_POLYGON_OFFSET_LINE
    GL_DEBUG_GROUP_STACK_DEPTH
    GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL
    GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
    GL_PROXY_TEXTURE_CUBE_MAP_ARB
    GL_RG16F
    GL_VERTEX_ARRAY_SIZE
    GL_VARIANT_ARRAY_EXT
    GL_SIGNED_LUMINANCE_ALPHA_NV
    GL_POINT_SIZE_MIN_ARB
    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB
    GL_TEXTURE_RESIDENT
    GL_BLEND_ADVANCED_COHERENT_NV
    GL_SLUMINANCE8_EXT
    GL_RENDERBUFFER_SAMPLES_EXT
    GL_TEXTURE_COORD_ARRAY_STRIDE_EXT
    GL_DOUBLE_MAT3x2_EXT
    GL_LIGHT1
    GL_REG_8_ATI
    GL_NUM_GENERAL_COMBINERS_NV
    GL_INTERNALFORMAT_DEPTH_SIZE
    GL_SAMPLE_MASK_VALUE_NV
    GL_C4UB_V2F
    GL_DOUBLE_MAT2
    GL_PIXEL_MAP_I_TO_I
    GL_LOCATION
    GL_QUERY_RESULT_ARB
    GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB
    GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV
    GL_COMPUTE_SUBROUTINE
    GL_SAMPLES_PASSED_ARB
    GL_CON_25_ATI
    GL_RGB16UI
    GL_DEPTH_STENCIL_ATTACHMENT
    GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB
    GL_FOG_OFFSET_SGIX
    GL_UNSIGNED_INT64_VEC3_ARB
    GL_TRANSFORM_FEEDBACK_BINDING
    GL_MAP2_VERTEX_ATTRIB2_4_NV
    GL_NUM_INSTRUCTIONS_TOTAL_ATI
    GL_IMAGE_CLASS_4_X_16
    GL_CLIPPING_OUTPUT_PRIMITIVES_ARB
    GL_SPOT_EXPONENT
    GL_RGB_SNORM
    GL_DEPTH_COMPONENTS
    GL_PROXY_TEXTURE_RECTANGLE
    GL_PIXEL_TEXTURE_SGIS
    GL_RED
    GL_TEXTURE20_ARB
    GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI
    GL_FRAMEBUFFER_BINDING
    GL_NAMED_STRING_LENGTH_ARB
    GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC
    GL_TEXTURE_MIN_LOD_SGIS
    GL_INDEX_ARRAY_COUNT_EXT
    GL_RED_INTEGER_EXT
    GL_DSDT8_MAG8_NV
    GL_PROGRAM_BINARY_RETRIEVABLE_HINT
    GL_PROGRAM_LENGTH_ARB
    GL_COLOR_ATTACHMENT14_EXT
    GL_RGBA16_EXT
    GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT
    GL_SAMPLE_BUFFERS_SGIS
    GL_TEXTURE_2D_ARRAY_EXT
    GL_MODELVIEW0_MATRIX_EXT
    GL_SEPARABLE_2D_EXT
    GL_TEXTURE_COMPARE_FUNC
    GL_RESET_NOTIFICATION_STRATEGY
    GL_DEBUG_SOURCE_WINDOW_SYSTEM
    GL_OP_POWER_EXT
    GL_MAP2_VERTEX_ATTRIB5_4_NV
    GL_VIEWPORT_SWIZZLE_POSITIVE_W_NV
    GL_POST_CONVOLUTION_COLOR_TABLE
    GL_TEXTURE_BUFFER_FORMAT_ARB
    GL_MAX_SPOT_EXPONENT_NV
    GL_ACTIVE_ATOMIC_COUNTER_BUFFERS
    GL_INTERNALFORMAT_STENCIL_SIZE
    GL_SAMPLE_COVERAGE_INVERT
    GL_REG_30_ATI
    GL_MAX_COMBINED_IMAGE_UNIFORMS
    GL_DUAL_LUMINANCE8_SGIS
    GL_NORMAL_MAP
    GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV
    GL_INTERLEAVED_ATTRIBS_EXT
    GL_LINES_ADJACENCY_EXT
    GL_NUM_FILL_STREAMS_NV
    GL_SPRITE_EYE_ALIGNED_SGIX
    GL_VERTEX_DATA_HINT_PGI
    GL_INCR_WRAP
    GL_MAX_VERTEX_STREAMS
    GL_TEXTURE_SHADER_NV
    GL_MAP2_GRID_DOMAIN
    GL_TEXTURE_CLIPMAP_CENTER_SGIX
    GL_R8_SNORM
    GL_COLOR_ARRAY_POINTER_EXT
    GL_MIRRORED_REPEAT_ARB
    GL_SHADER_STORAGE_BUFFER_BINDING
    GL_CON_7_ATI
    GL_STREAM_RASTERIZATION_AMD
    GL_INT_SAMPLER_2D
    GL_DEBUG_TYPE_OTHER
    GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS
    GL_OP_SET_GE_EXT
    GL_PRIMITIVE_RESTART_NV
    GL_NORMAL_ARRAY_COUNT_EXT
    GL_OFFSET_HILO_TEXTURE_2D_NV
    GL_IMAGE_CUBE
    GL_TEXTURE_GREEN_TYPE
    GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB
    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST
    GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES
    GL_TEXTURE_COMPARE_FAIL_VALUE_ARB
    GL_IMAGE_TRANSLATE_X_HP
    GL_POST_CONVOLUTION_RED_SCALE
    GL_NUM_COMPATIBLE_SUBROUTINES
    GL_MAX_PROGRAM_CALL_DEPTH_NV
    GL_COLOR_ATTACHMENT6_EXT
    GL_SEPARABLE_2D
    GL_SAMPLES_PASSED
    GL_R1UI_C4F_N3F_V3F_SUN
    GL_CON_3_ATI
    GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV
    GL_MIPMAP
    GL_DRAW_BUFFER11_ATI
    GL_TEXTURE_COMPARE_MODE_ARB
    GL_TRIANGLES_ADJACENCY_ARB
    GL_MULTIPLY_NV
    GL_POLYGON_OFFSET_FILL
    GL_T4F_C4F_N3F_V4F
    GL_ONE_MINUS_CONSTANT_ALPHA
    GL_POST_CONVOLUTION_RED_SCALE_EXT
    GL_FOG_COORD_SRC
    GL_PATH_GEN_COEFF_NV
    GL_INTERNALFORMAT_BLUE_SIZE
    GL_TEXTURE_WRAP_Q_SGIS
    GL_PACK_ALIGNMENT
    GL_MAX_IMAGE_SAMPLES
    GL_DEBUG_TYPE_MARKER
    GL_IS_ROW_MAJOR
    GL_COMPLETION_STATUS_ARB
    GL_VIEWPORT_SWIZZLE_X_NV
    GL_VIDEO_COLOR_CONVERSION_OFFSET_NV
    GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB
    GL_TEXTURE_IMMUTABLE_FORMAT
    GL_PURGED_CONTEXT_RESET_NV
    GL_COLOR_ARRAY_BUFFER_BINDING
    GL_TEXTURE_MAX_LEVEL
    GL_MAX_VERTEX_SHADER_INVARIANTS_EXT
    GL_PATH_MITER_LIMIT_NV
    GL_STENCIL
    GL_INTERLACE_READ_INGR
    GL_PROXY_TEXTURE_3D
    GL_LERP_ATI
    GL_CONVOLUTION_HINT_SGIX
    GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING
    GL_CURRENT_MATRIX_NV
    GL_TEXTURE23
    GL_DEPTH_BITS
    GL_LUMINANCE16UI_EXT
    GL_TIME_ELAPSED_EXT
    GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY
    GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV
    GL_TEXTURE_BUFFER_DATA_STORE_BINDING
    GL_POST_CONVOLUTION_BLUE_BIAS
    GL_FOG_COORDINATE
    GL_DITHER
    GL_NATIVE_GRAPHICS_END_HINT_PGI
    GL_PATH_GEN_COMPONENTS_NV
    GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL
    GL_VERTEX_ARRAY_TYPE_EXT
    GL_COMPRESSED_ALPHA
    GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV
    GL_EVAL_VERTEX_ATTRIB14_NV
    GL_DETAIL_TEXTURE_2D_SGIS
    GL_INTENSITY_SNORM
    GL_PREFER_DOUBLEBUFFER_HINT_PGI
    GL_TEXTURE_LUMINANCE_TYPE_ARB
    GL_INDEX_TEST_REF_EXT
    GL_INTENSITY16_SNORM
    GL_TRANSFORM_FEEDBACK_BINDING_NV
    GL_SPARE1_NV
    GL_RGBA4_DXT5_S3TC
    GL_TRIANGLES_ADJACENCY
    GL_UNSIGNED_INT_5_9_9_9_REV
    GL_DEBUG_SEVERITY_HIGH_ARB
    GL_DRAW_BUFFER9_ATI
    GL_DEPTH_TEXTURE_MODE_ARB
    GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE
    GL_IMAGE_BINDING_LAYER
    GL_OFFSET_TEXTURE_2D_BIAS_NV
    GL_SELECTION_BUFFER_POINTER
    GL_TRIANGLE_STRIP
    GL_TEXTURE_COORD_ARRAY_SIZE
    GL_R
    GL_AND
    GL_UNSIGNED_INT_IMAGE_3D
    GL_PROVOKING_VERTEX_EXT
    GL_PROGRAM_TEMPORARIES_ARB
    GL_BUFFER_ACCESS_ARB
    GL_OUTPUT_TEXTURE_COORD27_EXT
    GL_SUBTRACT
    GL_COLOR_ATTACHMENT17
    GL_QUERY_BY_REGION_NO_WAIT_INVERTED
    GL_OBJECT_POINT_SGIS
    GL_TEXTURE29
    GL_DEBUG_CALLBACK_FUNCTION_ARB
    GL_POINT_SPRITE_R_MODE_NV
    GL_DRAW_BUFFER2
    GL_TEXTURE_CUBE_MAP_SEAMLESS
    GL_PACK_INVERT_MESA
    GL_TEXTURE_MAX_CLAMP_R_SGIX
    GL_CONSTANT_BORDER
    GL_ALPHA_BITS
    GL_UNIFORM_BLOCK_NAME_LENGTH
    GL_TEXTURE_COMPARE_SGIX
    GL_VERTEX_ARRAY
    GL_LINES
    GL_SINGLE_COLOR_EXT
    GL_TEXTURE17_ARB
    GL_TEXTURE_SWIZZLE_R
    GL_UNPACK_SKIP_IMAGES
    GL_MAX_SPARSE_TEXTURE_SIZE_AMD
    GL_PIXEL_TILE_GRID_HEIGHT_SGIX
    GL_DOUBLE_MAT4x3
    GL_VERTEX_STREAM7_ATI
    GL_MAX_PROGRAM_ENV_PARAMETERS_ARB
    GL_DOUBLE_MAT4x3_EXT
    GL_INTERNALFORMAT_ALPHA_SIZE
    GL_LAYER_PROVOKING_VERTEX
    GL_COMPRESSED_SLUMINANCE_ALPHA
    GL_SUBSAMPLE_DISTANCE_AMD
    GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV
    GL_PATH_DASH_CAPS_NV
    GL_OUTPUT_TEXTURE_COORD15_EXT
    GL_CURRENT_MATRIX_ARB
    GL_POINT_SIZE_MAX_SGIS
    GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT
    GL_OUTPUT_TEXTURE_COORD14_EXT
    GL_POINT_TOKEN
    GL_INTERNALFORMAT_PREFERRED
    GL_TRANSLATE_X_NV
    GL_DEBUG_SEVERITY_LOW_KHR
    GL_VERTEX_ATTRIB_BINDING
    GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB
    GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM
    GL_NEAREST
    GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    GL_QUERY_BY_REGION_NO_WAIT
    GL_OFFSET_TEXTURE_2D_MATRIX_NV
    GL_INFO_LOG_LENGTH
    GL_MODELVIEW25_ARB
    GL_TEXTURE2
    GL_OUTPUT_TEXTURE_COORD13_EXT
    GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV
    GL_VERTEX_ARRAY_STORAGE_HINT_APPLE
    GL_VERTEX_ATTRIB_ARRAY3_NV
    GL_SOFTLIGHT_KHR
    GL_LINEAR_DETAIL_SGIS
    GL_LINES_ADJACENCY_ARB
    GL_RGBA4_S3TC
    GL_VERTEX_SHADER_OPTIMIZED_EXT
    GL_VIDEO_COLOR_CONVERSION_MATRIX_NV
    GL_DEBUG_TYPE_OTHER_KHR
    GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV
    GL_TEXTURE_LIGHTING_MODE_HP
    GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB
    GL_RENDERBUFFER_COLOR_SAMPLES_NV
    GL_VERTEX_STREAM2_ATI
    GL_INDEX_ARRAY_TYPE
    GL_FRAGMENT_PROGRAM_BINDING_NV
    GL_TEXTURE_DT_SIZE_NV
    GL_BLUE
    GL_MAX_FRAGMENT_INTERPOLATION_OFFSET
    GL_PASS_THROUGH_NV
    GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB
    GL_1PASS_EXT
    GL_SAMPLE_MASK_VALUE_SGIS
    GL_VIDEO_COLOR_CONVERSION_MIN_NV
    GL_VARIABLE_A_NV
    GL_BIAS_BY_NEGATIVE_ONE_HALF_NV
    GL_STENCIL_WRITEMASK
    GL_3D
    GL_VIEWPORT_SWIZZLE_NEGATIVE_X_NV
    GL_DOUBLE_MAT3_EXT
    GL_TEXTURE_INDEX_SIZE_EXT
    GL_RGBA16F_ARB
    GL_REG_28_ATI
    GL_QUERY_RESULT_AVAILABLE
    GL_TANGENT_ARRAY_EXT
    GL_ALPHA12
    GL_PINLIGHT_NV
    GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV
    GL_CON_12_ATI
    GL_STATIC_VERTEX_ARRAY_IBM
    GL_COLOR_ATTACHMENT2_EXT
    GL_CURRENT_MATRIX_INDEX_ARB
    GL_MAX_RECTANGLE_TEXTURE_SIZE_NV
    GL_VARIANT_ARRAY_TYPE_EXT
    GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
    GL_DOT3_RGB_ARB
    GL_INT_IMAGE_2D_MULTISAMPLE
    GL_CURRENT_WEIGHT_ARB
    GL_COLOR_ATTACHMENT12
    GL_BITMAP_TOKEN
    GL_CONVEX_HULL_NV
    GL_COLOR_SUM_EXT
    GL_GPU_ADDRESS_NV
    GL_STENCIL_SAMPLES_NV
    GL_BLEND_DST_ALPHA
    GL_PROGRAM_TEX_INSTRUCTIONS_ARB
    GL_VERTEX_PROGRAM_POINT_SIZE_ARB
    GL_COLOR_INDEX12_EXT
    GL_CMYKA_EXT
    GL_CONVOLUTION_FILTER_SCALE
    GL_RED_INTEGER
    GL_VERTEX_SHADER_INSTRUCTIONS_EXT
    GL_COLOR_INDEX
    GL_DOT_PRODUCT_TEXTURE_2D_NV
    GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2
    GL_FRAGMENT_NORMAL_EXT
    GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB
    GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS
    GL_CLIENT_ATTRIB_STACK_DEPTH
    GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN
    GL_NORMAL_ARRAY_LENGTH_NV
    GL_EDGE_FLAG_ARRAY_EXT
    GL_EYE_LINEAR_NV
    GL_TEXTURE_STORAGE_HINT_APPLE
    GL_INT64_ARB
    GL_DRAW_BUFFER8_ATI
    GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB
    GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV
    GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE
    GL_EVAL_VERTEX_ATTRIB13_NV
    GL_PRIMITIVE_RESTART_INDEX
    GL_RENDERBUFFER_DEPTH_SIZE_EXT
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y
    GL_GEQUAL
    GL_RGBA32UI
    GL_DECAL
    GL_PIXEL_MAP_I_TO_A_SIZE
    GL_WEIGHT_ARRAY_ARB
    GL_MIN_SAMPLE_SHADING_VALUE_ARB
    GL_DRAW_BUFFER0_ATI
    GL_TEXTURE_RED_SIZE
    GL_QUERY_BUFFER
    GL_LOSE_CONTEXT_ON_RESET_KHR
    GL_FRONT
    GL_FILL
    GL_MAX_TEXTURE_BUFFER_SIZE_EXT
    GL_TEXTURE_SWIZZLE_R_EXT
    GL_MAX_PROGRAM_IF_DEPTH_NV
    GL_POLYGON_SMOOTH
    GL_CURRENT_NORMAL
    GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV
    GL_IMAGE_2D_MULTISAMPLE_EXT
    GL_POST_COLOR_MATRIX_RED_SCALE_SGI
    GL_BUFFER_BINDING
    GL_TEXTURE_HI_SIZE_NV
    GL_MATRIX_INDEX_ARRAY_POINTER_ARB
    GL_DEBUG_SOURCE_SHADER_COMPILER_ARB
    GL_TEXTURE_BUFFER_SIZE
    GL_VERTEX_PROGRAM_TWO_SIDE_NV
    GL_DRAW_INDIRECT_ADDRESS_NV
    GL_MAX_TEXTURE_SIZE
    GL_CULL_VERTEX_EYE_POSITION_EXT
    GL_EYE_LINE_SGIS
    GL_UNSIGNED_INT_VEC4
    GL_LIGHTEN_KHR
    GL_DRAW_BUFFER13_ATI
    GL_GEOMETRY_TEXTURE
    GL_INTENSITY
    GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV
    GL_PRIMITIVE_ID_NV
    GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV
    GL_FOG_COORDINATE_ARRAY_TYPE_EXT
    GL_BLEND_SRC_ALPHA
    GL_BACK_NORMALS_HINT_PGI
    GL_NUM_COMPRESSED_TEXTURE_FORMATS
    GL_COLOR_ATTACHMENT26
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI
    GL_STENCIL_TEST
    GL_DEBUG_SEVERITY_HIGH
    GL_LIST_PRIORITY_SGIX
    GL_VERTEX_ARRAY_KHR
    GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB
    GL_INT_SAMPLER_1D_EXT
    GL_MAX_DEPTH
    GL_COLOR_INDEXES
    GL_IMAGE_BINDING_NAME
    GL_POLYGON_TOKEN
    GL_VIEW_CLASS_RGTC2_RG
    GL_SHADER_SOURCE_LENGTH
    GL_ATTRIB_ARRAY_POINTER_NV
    GL_ACCUM_ADJACENT_PAIRS_NV
    GL_MAX_VARYING_COMPONENTS
    GL_LIGHT_MODEL_LOCAL_VIEWER
    GL_ANY_SAMPLES_PASSED
    GL_MAX_EXT
    GL_FOG_SPECULAR_TEXTURE_WIN
    GL_UNSIGNED_INT_VEC3_EXT
    GL_INVERT
    GL_MEDIUM_INT
    GL_PIXEL_MAP_I_TO_R
    GL_OP_DOT3_EXT
    GL_HISTOGRAM_GREEN_SIZE_EXT
    GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB
    GL_DOUBLE_VEC2
    GL_DST_ATOP_NV
    GL_MAP1_TEXTURE_COORD_3
    GL_ACTIVE_STENCIL_FACE_EXT
    GL_PIXEL_MAP_I_TO_A
    GL_CON_28_ATI
    GL_PATH_STENCIL_FUNC_NV
    GL_YCBAYCR8A_4224_NV
    GL_UNSIGNED_INT_IMAGE_1D_EXT
    GL_UNSIGNED_INT_24_8
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
    GL_PACK_RESAMPLE_OML
    GL_T2F_IUI_V3F_EXT
    GL_CLIP_DISTANCE4
    GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD
    GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV
    GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT
    GL_DOUBLE
    GL_TEXTURE_SHARED_SIZE
    GL_COLOR_ATTACHMENT15_EXT
    GL_DRAW_BUFFER15_ATI
    GL_POLYGON_STIPPLE
    GL_DIFFERENCE_NV
    GL_BINORMAL_ARRAY_STRIDE_EXT
    GL_COMPRESSED_RED_GREEN_RGTC2_EXT
    GL_MAX_PROGRAM_ATTRIBS_ARB
    GL_UNPACK_CLIENT_STORAGE_APPLE
    GL_PATH_DASH_ARRAY_COUNT_NV
    GL_4PASS_0_EXT
    GL_ARRAY_BUFFER_ARB
    GL_WEIGHTED_AVERAGE_ARB
    GL_NUM_LOOPBACK_COMPONENTS_ATI
    GL_TRANSFORM_FEEDBACK_PAUSED
    GL_HISTOGRAM
    GL_UNSIGNED_BYTE_3_3_2_EXT
    GL_SAMPLES_3DFX
    GL_SAMPLE_MASK_INVERT_EXT
    GL_PERSPECTIVE_CORRECTION_HINT
    GL_PIXEL_TILE_WIDTH_SGIX
    GL_MAX_ASYNC_READ_PIXELS_SGIX
    GL_DOUBLE_MAT3x4_EXT
    GL_CLEAR_BUFFER
    GL_TEXTURE12_ARB
    GL_FRAMEBUFFER_DEFAULT_SAMPLES
    GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD
    GL_DRAW_BUFFER6_ARB
    GL_INT64_NV
    GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN
    GL_FRONT_AND_BACK
    GL_NORMAL_ARRAY_LIST_IBM
    GL_OP_DOT4_EXT
    GL_SHARED_TEXTURE_PALETTE_EXT
    GL_UNSIGNED_INT_10_10_10_2_EXT
    GL_AVERAGE_EXT
    GL_DEPTH_CLAMP_NEAR_AMD
    GL_STATIC_READ_ARB
    GL_TEXTURE_MAX_ANISOTROPY_EXT
    GL_MAX_SERVER_WAIT_TIMEOUT
    GL_MATRIX7_NV
    GL_GREEN_INTEGER_EXT
    GL_STATIC_DRAW_ARB
    GL_MAX_PROGRAM_TEMPORARIES_ARB
    GL_TEXTURE_1D_STACK_MESAX
    GL_SRGB8_ALPHA8_EXT
    GL_MAX_3D_TEXTURE_SIZE
    GL_QUAD_ALPHA4_SGIS
    GL_UNSIGNED_INT_IMAGE_CUBE_EXT
    GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS
    GL_VIEW_CLASS_S3TC_DXT3_RGBA
    GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
    GL_TEXTURE_BINDING_CUBE_MAP_EXT
    GL_TRANSFORM_FEEDBACK_BUFFER_NV
    GL_FRAGMENT_SHADER_INVOCATIONS_ARB
    GL_PLUS_CLAMPED_ALPHA_NV
    GL_COMPRESSED_RG11_EAC
    GL_YCRCBA_SGIX
    GL_COMPRESSED_LUMINANCE
    GL_FRAMEBUFFER_EXT
    GL_TEXTURE_GREEN_SIZE_EXT
    GL_TEXTURE_DEPTH_SIZE
    GL_CULL_FACE
    GL_TEXTURE_SHARED_SIZE_EXT
    GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB
    GL_TEXTURE_GEN_Q
    GL_TEXTURE_ENV_COLOR
    GL_RGBA4
    GL_TEXTURE0
    GL_RASTERIZER_DISCARD
    GL_MODELVIEW5_ARB
    GL_IMAGE_BUFFER
    GL_PROGRAM_ATTRIBS_ARB
    GL_OBJECT_COMPILE_STATUS_ARB
    GL_COLOR_SAMPLES_NV
    GL_TEXTURE_COORD_ARRAY_POINTER_EXT
    GL_DEBUG_SEVERITY_MEDIUM_KHR
    GL_PATH_ERROR_POSITION_NV
    GL_UNSIGNED_INT_8_8_8_8_EXT
    GL_TEXTURE_COMPARE_MODE
    GL_ALPHA_FLOAT32_APPLE
    GL_POST_COLOR_MATRIX_RED_BIAS_SGI
    GL_MAX_VERTEX_SHADER_LOCALS_EXT
    GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS
    GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB
    GL_RGB
    GL_RGB10_A2UI
    GL_CURRENT_QUERY_ARB
    GL_OP_RECIP_SQRT_EXT
    GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2
    GL_TRANSFORM_FEEDBACK_BUFFER_START_NV
    GL_TEXTURE22_ARB
    GL_COLOR_INDEX8_EXT
    GL_RENDERBUFFER_INTERNAL_FORMAT_EXT
    GL_RASTER_SAMPLES_EXT
    GL_RECLAIM_MEMORY_HINT_PGI
    GL_COLORDODGE_NV
    GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER
    GL_422_REV_EXT
    GL_DRAW_FRAMEBUFFER
    GL_DEPTH_FUNC
    GL_CONVOLUTION_BORDER_COLOR_HP
    GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE
    GL_TEXTURE_FILTER4_SIZE_SGIS
    GL_MAX_CONVOLUTION_HEIGHT
    GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS
    GL_COLOR_INDEX4_EXT
    GL_PROXY_TEXTURE_2D_MULTISAMPLE
    GL_CLAMP_VERTEX_COLOR
    GL_HSL_SATURATION_NV
    GL_UNSIGNED_SHORT
    GL_DEBUG_SOURCE_APPLICATION_ARB
    GL_GEOMETRY_VERTICES_OUT_EXT
    GL_UNSIGNED_INT_SAMPLER_3D_EXT
    GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB
    GL_PROGRAM_MATRIX_EXT
    GL_DEBUG_SOURCE_APPLICATION
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE
    GL_EFFECTIVE_RASTER_SAMPLES_EXT
    GL_QUAD_TEXTURE_SELECT_SGIS
    GL_COMBINER_INPUT_NV
    GL_UNKNOWN_CONTEXT_RESET
    GL_DRAW_BUFFER3_ATI
    GL_SHADOW_ATTENUATION_EXT
    GL_VIEWPORT_SWIZZLE_POSITIVE_X_NV
    GL_PATH_COMPUTED_LENGTH_NV
    GL_OBJECT_LINE_SGIS
    GL_SAMPLE_BUFFERS_3DFX
    GL_INT_IMAGE_2D_RECT
    GL_NORMAL_ARRAY_POINTER
    GL_VARIABLE_C_NV
    GL_UNSIGNED_INT8_VEC2_NV
    GL_CON_18_ATI
    GL_POLYGON_OFFSET_FACTOR_EXT
    GL_OP_ROUND_EXT
    GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
    GL_DEBUG_OUTPUT
    GL_SMOOTH_POINT_SIZE_RANGE
    GL_COLOR_ATTACHMENT20
    GL_BUFFER_MAP_POINTER_ARB
    GL_POLYGON_OFFSET_POINT
    GL_REG_31_ATI
    GL_MODELVIEW0_STACK_DEPTH_EXT
    GL_IMAGE_COMPATIBILITY_CLASS
    GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME
    GL_DUAL_LUMINANCE16_SGIS
    GL_MAX_SAMPLE_MASK_WORDS_NV
    GL_LUMINANCE4_ALPHA4_EXT
    GL_DIFFERENCE_KHR
    GL_MAP2_TEXTURE_COORD_2
    GL_PRIMITIVES_GENERATED_EXT
    GL_VERTEX_ATTRIB_ARRAY_STRIDE
    GL_VIRTUAL_PAGE_SIZE_INDEX_ARB
    GL_SPARSE_BUFFER_PAGE_SIZE_ARB
    GL_COLOR
    GL_CLIENT_ACTIVE_TEXTURE_ARB
    GL_CURRENT_VERTEX_WEIGHT_EXT
    GL_MATRIX21_ARB
    GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL
    GL_SIGNALED
    GL_REG_7_ATI
    GL_SCREEN_NV
    GL_DOMAIN
    GL_LUMINANCE16I_EXT
    GL_RGB16I_EXT
    GL_RGBA_FLOAT_MODE_ARB
    GL_VERTEX_ARRAY_OBJECT_AMD
    GL_BUMP_TEX_UNITS_ATI
    GL_UNIFORM_MATRIX_STRIDE
    GL_TEXTURE_COMPARE_OPERATOR_SGIX
    GL_TRANSPOSE_MODELVIEW_MATRIX
    GL_ALPHA_INTEGER_EXT
    GL_PROXY_TEXTURE_2D
    GL_UNSIGNED_INT8_VEC3_NV
    GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
    GL_MAP2_TEXTURE_COORD_4
    GL_COLOR_TABLE_BLUE_SIZE
    GL_TEXTURE_FILTER_CONTROL_EXT
    GL_SEPARATE_ATTRIBS
    GL_PROGRAM_TARGET_NV
    GL_OUTPUT_TEXTURE_COORD28_EXT
    GL_MAX_TEXTURE_COORDS
    GL_CONTEXT_LOST_KHR
    GL_VIBRANCE_SCALE_NV
    GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT
    GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV
    GL_TEXTURE6_ARB
    GL_REFERENCED_BY_TESS_EVALUATION_SHADER
    GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB
    GL_INTERNALFORMAT_DEPTH_TYPE
    GL_LUMINANCE12_ALPHA12_EXT
    GL_PACK_COMPRESSED_BLOCK_WIDTH
    GL_CONSTANT_COLOR1_NV
    GL_BLUE_MIN_CLAMP_INGR
    GL_SCREEN_COORDINATES_REND
    GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT
    GL_INT64_VEC4_NV
    GL_MAX_GEOMETRY_OUTPUT_COMPONENTS
    GL_LUMINANCE4_ALPHA4
    GL_INTENSITY4_EXT
    GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI
    GL_SIGNED_RGB_UNSIGNED_ALPHA_NV
    GL_ALPHA8
    GL_PRIMITIVES_GENERATED_NV
    GL_PACK_SKIP_VOLUMES_SGIS
    GL_FRAGMENT_LIGHT1_SGIX
    GL_TEXTURE_COLOR_TABLE_SGI
    GL_IMAGE_2D_EXT
    GL_MATRIX3_ARB
    GL_SHADE_MODEL
    GL_MAX_GEOMETRY_ATOMIC_COUNTERS
    GL_MAX_VERTEX_UNIFORM_COMPONENTS
    GL_TESS_EVALUATION_PROGRAM_NV
    GL_MINMAX_FORMAT
    GL_LUMINANCE6_ALPHA2
    GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS
    GL_MATRIX14_ARB
    GL_HALF_FLOAT
    GL_SAMPLE_ALPHA_TO_MASK_EXT
    GL_NOOP
    GL_VIDEO_BUFFER_BINDING_NV
    GL_NO_RESET_NOTIFICATION_ARB
    GL_OBJECT_DELETE_STATUS_ARB
    GL_UNPACK_CMYK_HINT_EXT
    GL_PROGRAM_INPUT
    GL_ELEMENT_ARRAY_BUFFER_ARB
    GL_SHADER_IMAGE_ATOMIC
    GL_OBJECT_LINK_STATUS_ARB
    GL_WEIGHT_ARRAY_BUFFER_BINDING
    GL_DISPATCH_INDIRECT_BUFFER_BINDING
    GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB
    GL_COPY
    GL_RGBA
    GL_MAX_DEPTH_TEXTURE_SAMPLES
    GL_TEXTURE_HEIGHT
    GL_DEBUG_SOURCE_SHADER_COMPILER
    GL_EXPAND_NORMAL_NV
    GL_REG_26_ATI
    GL_TESS_CONTROL_OUTPUT_VERTICES
    GL_2_BYTES
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR
    GL_TEXTURE_RECTANGLE_NV
    GL_VERTEX_WEIGHTING_EXT
    GL_RGB32F
    GL_LUMINANCE8_ALPHA8_SNORM
    GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS
    GL_MATRIX5_NV
    GL_PASS_THROUGH_TOKEN
    GL_REG_22_ATI
    GL_STENCIL_BACK_PASS_DEPTH_PASS
    GL_DEPTH_CLAMP
    GL_COLOR_TABLE_GREEN_SIZE
    GL_COLOR_ATTACHMENT12_EXT
    GL_TEXTURE_GEQUAL_R_SGIX
    GL_MAX_PROGRAM_SUBROUTINE_NUM_NV
    GL_UNSIGNED_INT_10F_11F_11F_REV
    GL_VERTEX_BLEND_ARB
    GL_CLIP_DISTANCE_NV
    GL_MAX_TESS_GEN_LEVEL
    GL_EMBOSS_MAP_NV
    GL_AND_REVERSE
    GL_FRAGMENT_LIGHT5_SGIX
    GL_MAX_FRAGMENT_ATOMIC_COUNTERS
    GL_LOW_FLOAT
    GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI
    GL_LAST_VIDEO_CAPTURE_STATUS_NV
    GL_INDEX_ARRAY_LIST_IBM
    GL_RENDERBUFFER_WIDTH_EXT
    GL_TEXTURE_CUBE_MAP_ARRAY
    GL_DEBUG_TYPE_ERROR_ARB
    GL_MAX_LABEL_LENGTH
    GL_PERFMON_RESULT_SIZE_AMD
    GL_TEXTURE_CLIPMAP_FRAME_SGIX
    GL_INTENSITY16F_ARB
    GL_LIGHTING
    GL_VERTEX_PROGRAM_POINT_SIZE_NV
    GL_COUNT_UP_NV
    GL_PATH_STENCIL_VALUE_MASK_NV
    GL_EVAL_VERTEX_ATTRIB8_NV
    GL_MAP1_VERTEX_ATTRIB8_4_NV
    GL_COLOR_TABLE_RED_SIZE_SGI
    GL_TEXTURE_BASE_LEVEL_SGIS
    GL_REG_24_ATI
    GL_TEXTURE_BUFFER_FORMAT_EXT
    GL_FRAMEZOOM_FACTOR_SGIX
    GL_COMPRESSED_RGBA_ASTC_8x8_KHR
    GL_PATH_FILL_BOUNDING_BOX_NV
    GL_DRAW_INDIRECT_BUFFER_BINDING
    GL_HALF_FLOAT_ARB
    GL_SLUMINANCE8_ALPHA8
    GL_MAGNITUDE_BIAS_NV
    GL_INT64_VEC3_NV
    GL_PIXEL_MAP_I_TO_B_SIZE
    GL_COLOR_ATTACHMENT9_EXT
    GL_PERCENTAGE_AMD
    GL_4_BYTES_NV
    GL_QUERY_OBJECT_EXT
    GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT
    GL_MATRIX29_ARB
    GL_ELEMENT_ARRAY_APPLE
    GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
    GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT
    GL_INTENSITY16UI_EXT
    GL_COLOR_ATTACHMENT19
    GL_TEXTURE_RED_SIZE_EXT
    GL_TEXTURE_2D_STACK_MESAX
    GL_DEPENDENT_HILO_TEXTURE_2D_NV
    GL_COLOR_ARRAY_LENGTH_NV
    GL_MAX_ARRAY_TEXTURE_LAYERS_EXT
    GL_CURRENT_MATRIX_STACK_DEPTH_NV
    GL_STENCIL_INDEX1_EXT
    GL_COMPRESSED_SLUMINANCE
    GL_MAX_SHADER_COMPILER_THREADS_ARB
    GL_TEXTURE_TOO_LARGE_EXT
    GL_NEAREST_CLIPMAP_LINEAR_SGIX
    GL_COMPRESSED_SIGNED_RED_RGTC1
    GL_DUAL_INTENSITY12_SGIS
    GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV
    GL_FLAT
    GL_STREAM_COPY
    GL_FEEDBACK_BUFFER_SIZE
    GL_MAP1_VERTEX_ATTRIB13_4_NV
    GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE
    GL_SYNC_FENCE
    GL_MAX_TEXTURE_IMAGE_UNITS_ARB
    GL_ELEMENT_ARRAY_POINTER_APPLE
    GL_T
    GL_COLOR_ALPHA_PAIRING_ATI
    GL_ARRAY_BUFFER_BINDING_ARB
    GL_LUMINANCE12_ALPHA4
    GL_RGBA_FLOAT16_ATI
    GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB
    GL_UNIFORM_BLOCK_DATA_SIZE
    GL_SAMPLER_OBJECT_AMD
    GL_VERTEX_SHADER_INVARIANTS_EXT
    GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT
    GL_DRAW_BUFFER1_ATI
    GL_DEPTH_COMPONENT32_ARB
    GL_PALETTE4_RGBA8_OES
    GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT
    GL_INT_SAMPLER_CUBE
    GL_DT_SCALE_NV
    GL_BLEND_DST_RGB_EXT
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER
    GL_EMBOSS_CONSTANT_NV
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
    GL_MAP1_GRID_SEGMENTS
    GL_DARKEN_NV
    GL_OUTPUT_TEXTURE_COORD8_EXT
    GL_COLOR_ATTACHMENT22
    GL_TIMEOUT_EXPIRED
    GL_2D
    GL_MATRIX30_ARB
    GL_UNIFORM_BUFFER_BINDING
    GL_BUMP_TARGET_ATI
    GL_MATRIX3_NV
    GL_CONSTANT_BORDER_HP
    GL_DEBUG_SOURCE_APPLICATION_KHR
    GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS
    GL_OUTPUT_VERTEX_EXT
    GL_INNOCENT_CONTEXT_RESET_KHR
    GL_EYE_LINEAR
    GL_PALETTE8_R5_G6_B5_OES
    GL_MAX_TEXTURE_IMAGE_UNITS
    GL_MAX_PROGRAM_PATCH_ATTRIBS_NV
    GL_POST_CONVOLUTION_GREEN_BIAS
    GL_LUMINANCE8I_EXT
    GL_FOG_START
    GL_RGB16
    GL_COLOR_ARRAY_SIZE
    GL_CURRENT_PROGRAM
    GL_ALPHA_FLOAT32_ATI
    GL_IMAGE_2D
    GL_PROGRAM_FORMAT_ARB
    GL_BUFFER_SIZE
    GL_MATRIX1_ARB
    GL_GREATER
    GL_INCR
    GL_X_EXT
    GL_ALPHA_MIN_SGIX
    GL_RGBA8UI_EXT
    GL_PROGRAM_NATIVE_PARAMETERS_ARB
    GL_ACTIVE_UNIFORMS
    GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
    GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT
    GL_BUMP_ROT_MATRIX_ATI
    GL_UNIFORM_NAME_LENGTH
    GL_TEXTURE_MIN_FILTER
    GL_SPOT_DIRECTION
    GL_NORMAL_ARRAY_ADDRESS_NV
    GL_SAMPLE_PATTERN_SGIS
    GL_SRC_OUT_NV
    GL_BLEND_COLOR
    GL_VERTEX_STREAM6_ATI
    GL_MAX_GEOMETRY_SHADER_INVOCATIONS
    GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT
    GL_UNPACK_SKIP_PIXELS
    GL_COPY_WRITE_BUFFER
    GL_DOT_PRODUCT_DEPTH_REPLACE_NV
    GL_SIGNED_IDENTITY_NV
    GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR
    GL_PATH_INITIAL_DASH_CAP_NV
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB
    GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD
    GL_DEBUG_CALLBACK_FUNCTION_KHR
    GL_STENCIL_BACK_FUNC
    GL_CURRENT_SECONDARY_COLOR_EXT
    GL_LEQUAL
    GL_RENDERBUFFER_STENCIL_SIZE
    GL_R16F
    GL_LUMINANCE_FLOAT32_ATI
    GL_COLOR_TABLE_FORMAT_SGI
    GL_INT_IMAGE_1D_ARRAY
    GL_422_AVERAGE_EXT
    GL_DEPTH_CLAMP_FAR_AMD
    GL_PROGRAM_POINT_SIZE
    GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS
    GL_SRGB_ALPHA_EXT
    GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT
    GL_HISTOGRAM_WIDTH
    GL_UNSIGNED_INT_IMAGE_2D_RECT
    GL_MATRIX24_ARB
    GL_BLEND_OVERLAP_NV
    GL_TEXTURE_CONSTANT_DATA_SUNX
    GL_POINT_SIZE_MIN
    GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
    GL_TEXTURE_MAX_LEVEL_SGIS
    GL_FULL_STIPPLE_HINT_PGI
    GL_DST_NV
    GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM
    GL_FRAMEBUFFER_BINDING_EXT
    GL_TEXTURE_BINDING_3D
    GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV
    GL_TEXTURE_ALPHA_SIZE
    GL_TEXTURE_COORD_ARRAY_SIZE_EXT
    GL_RESAMPLE_REPLICATE_OML
    GL_DRAW_BUFFER2_ATI
    GL_ALPHA_FLOAT16_APPLE
    GL_COMPRESSED_RG
    GL_DST_OVER_NV
    GL_BLEND_EQUATION_RGB
    GL_OUTPUT_TEXTURE_COORD18_EXT
    GL_TEXTURE10_ARB
    GL_TEXTURE_FIXED_SAMPLE_LOCATIONS
    GL_STATIC_READ
    GL_ELEMENT_ARRAY_BUFFER_BINDING
    GL_COLOR_ATTACHMENT3
    GL_UNSIGNED_SHORT_5_5_5_1
    GL_MAX_FRAMEBUFFER_LAYERS
    GL_OBJECT_DISTANCE_TO_LINE_SGIS
    GL_SAMPLER_CUBE_MAP_ARRAY
    GL_VERTEX_SHADER_LOCALS_EXT
    GL_FOG_COORDINATE_ARRAY_EXT
    GL_QUERY_RESULT_AVAILABLE_ARB
    GL_POST_TEXTURE_FILTER_SCALE_SGIX
    GL_BGR
    GL_TEXTURE19
    GL_UNIFORM_BUFFER_EXT
    GL_VERTEX_ATTRIB_ARRAY_SIZE
    GL_SAMPLER_CUBE_MAP_ARRAY_ARB
    GL_SHADER_OPERATION_NV
    GL_CULL_FACE_MODE
    GL_POLYGON_MODE
    GL_SRGB_WRITE
    GL_2PASS_0_SGIS
    GL_UNSIGNED_INT64_NV
    GL_DOUBLE_MAT2x4
    GL_DELETE_STATUS
    GL_GREEN_BITS
    GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS
    GL_MATERIAL_SIDE_HINT_PGI
    GL_PIXEL_MAP_I_TO_G
    GL_PRIMITIVES_SUBMITTED_ARB
    GL_ALPHA_MAX_CLAMP_INGR
    GL_INT_IMAGE_CUBE_EXT
    GL_CONVOLUTION_1D_EXT
    GL_DSDT_NV
    GL_FACTOR_MIN_AMD
    GL_VERTEX_PROGRAM_NV
    GL_MAP1_VERTEX_ATTRIB6_4_NV
    GL_PERTURB_EXT
    GL_MAX_FRAGMENT_LIGHTS_SGIX
    GL_SAMPLER_1D_ARRAY
    GL_MIN_EXT
    GL_VARIABLE_B_NV
    GL_FONT_TARGET_UNAVAILABLE_NV
    GL_DEBUG_TYPE_PERFORMANCE_ARB
    GL_STENCIL_BACK_WRITEMASK
    GL_MAP1_BINORMAL_EXT
    GL_CONTEXT_ROBUST_ACCESS_KHR
    GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV
    GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT
    GL_CCW
    GL_OBJECT_PLANE
    GL_LUMINANCE_ALPHA_FLOAT16_ATI
    GL_INT_IMAGE_2D_ARRAY_EXT
    GL_INTENSITY_FLOAT16_APPLE
    GL_COLOR_TABLE_SGI
    GL_INT_SAMPLER_2D_RECT_EXT
    GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS
    GL_RGBA_FLOAT16_APPLE
    GL_FRAMEBUFFER_RENDERABLE_LAYERED
    GL_COPY_READ_BUFFER
    GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT
    GL_MAX_MODELVIEW_STACK_DEPTH
    GL_MAP2_TANGENT_EXT
    GL_SM_COUNT_NV
    GL_SAMPLE_BUFFERS_EXT
    GL_VIEWPORT_SUBPIXEL_BITS
    GL_SHADER_CONSISTENT_NV
    GL_PROGRAM_BINARY_FORMATS
    GL_MAX_DRAW_BUFFERS_ARB
    GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER
    GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB
    GL_CONTEXT_PROFILE_MASK
    GL_ASYNC_TEX_IMAGE_SGIX
    GL_MAX_EVAL_ORDER
    GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
    GL_MAX_COMPUTE_UNIFORM_BLOCKS
    GL_DRAW_PIXELS_APPLE
    GL_DEBUG_SEVERITY_MEDIUM_AMD
    GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB
    GL_TEXTURE_COMPRESSED_BLOCK_SIZE
    GL_DRAW_BUFFER5_ATI
    GL_UNIFORM_BLOCK_BINDING
    GL_VERTEX_ARRAY_LIST_IBM
    GL_PALETTE4_RGBA4_OES
    GL_BACK_RIGHT
    GL_CLIP_PLANE2
    GL_SLICE_ACCUM_SUN
    GL_RENDERBUFFER_STENCIL_SIZE_EXT
    GL_INTENSITY12
    GL_MIRROR_CLAMP_TO_BORDER_EXT
    GL_STENCIL_INDEX8_EXT
    GL_RENDERBUFFER_ALPHA_SIZE_EXT
    GL_MATRIX8_ARB
    GL_ARRAY_ELEMENT_LOCK_FIRST_EXT
    GL_KEEP
    GL_STENCIL_BACK_OP_VALUE_AMD
    GL_DEBUG_TYPE_PUSH_GROUP_KHR
    GL_ALPHA8_EXT
    GL_DEPTH_COMPONENT32_SGIX
    GL_PATH_FILL_COVER_MODE_NV
    GL_FRAMEBUFFER_COMPLETE_EXT
    GL_ALPHA12_EXT
    GL_BGRA_INTEGER
    GL_TEXTURE30_ARB
    GL_HISTOGRAM_GREEN_SIZE
    GL_TEXTURE0_ARB
    GL_EXP2
    GL_EDGE_FLAG_ARRAY_LENGTH_NV
    GL_INT64_VEC2_ARB
    GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV
    GL_MATRIX11_ARB
    GL_DECR_WRAP
    GL_ONE_MINUS_SRC1_ALPHA
    GL_MAP2_BINORMAL_EXT
    GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV
    GL_TEXTURE_POST_SPECULAR_HP
    GL_COLOR_ATTACHMENT13
    GL_RGB32I
    GL_TEXTURE_4D_BINDING_SGIS
    GL_GUILTY_CONTEXT_RESET
    GL_SAMPLE_ALPHA_TO_COVERAGE_ARB
    GL_INTERNALFORMAT_BLUE_TYPE
    GL_MAX_VIEWPORTS
    GL_OUTPUT_TEXTURE_COORD30_EXT
    GL_CON_10_ATI
    GL_ACCUM_GREEN_BITS
    GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX
    GL_TRANSPOSE_PROJECTION_MATRIX_ARB
    GL_FRAGMENT_COLOR_EXT
    GL_REPLACEMENT_CODE_ARRAY_SUN
    GL_TOP_LEVEL_ARRAY_SIZE
    GL_OUTPUT_TEXTURE_COORD25_EXT
    GL_DRAW_BUFFER11
    GL_MAP1_VERTEX_ATTRIB12_4_NV
    GL_V2F
    GL_CONSTANT_ALPHA
    GL_UNSIGNED_SHORT_8_8_APPLE
    GL_CURRENT_VERTEX_ATTRIB_ARB
    GL_INT_IMAGE_CUBE_MAP_ARRAY
    GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER
    GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB
    GL_BUFFER_MAPPED
    GL_INTENSITY16I_EXT
    GL_POINT_SMOOTH_HINT
    GL_DRAW_BUFFER6_ATI
    GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV
    GL_LUMINANCE_ALPHA8I_EXT
    GL_MAX_SHADER_BUFFER_ADDRESS_NV
    GL_PROGRAM_LENGTH_NV
    GL_SAMPLE_MASK_EXT
    GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV
    GL_IMPLEMENTATION_COLOR_READ_TYPE
    GL_DEPTH24_STENCIL8
    GL_FEEDBACK
    GL_VERTEX_ARRAY_RANGE_POINTER_APPLE
    GL_TEXTURE_MAX_CLAMP_T_SGIX
    GL_NUM_EXTENSIONS
    GL_DRAW_BUFFER10
    GL_DRAW_BUFFER3
    GL_NORMAL_ARRAY_POINTER_EXT
    GL_UNSIGNED_INT8_VEC4_NV
    GL_FLOAT16_NV
    GL_VERTEX_ARRAY_ADDRESS_NV
    GL_MULTISAMPLE_COVERAGE_MODES_NV
    GL_LIGHT0
    GL_BLEND_EQUATION_ALPHA
    GL_DEPTH_BOUNDS_EXT
    GL_MATRIX10_ARB
    GL_DEBUG_TYPE_ERROR
    GL_TESS_EVALUATION_SUBROUTINE_UNIFORM
    GL_EDGE_FLAG_ARRAY_STRIDE_EXT
    GL_VERTEX_ELEMENT_SWIZZLE_AMD
    GL_TEXTURE_WRAP_T
    GL_FOG_HINT
    GL_READ_PIXEL_DATA_RANGE_NV
    GL_SLUMINANCE
    GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV
    GL_HILO8_NV
    GL_VERTEX_ARRAY_STRIDE_EXT
    GL_PIXEL_SUBSAMPLE_4444_SGIX
    GL_POST_COLOR_MATRIX_GREEN_SCALE
    GL_IMAGE_BINDING_LEVEL
    GL_SYNC_FLAGS
    GL_ACTIVE_VARIABLES
    GL_DRAW_INDIRECT_UNIFIED_NV
    GL_FACTOR_MAX_AMD
    GL_PROXY_TEXTURE_RECTANGLE_ARB
    GL_REG_4_ATI
    GL_LINE_WIDTH_GRANULARITY
    GL_QUERY_TARGET
    GL_TEXTURE_BINDING_CUBE_MAP_ARB
    GL_ALPHA16
    GL_SLUMINANCE_ALPHA
    GL_FLOAT_R_NV
    GL_CON_20_ATI
    GL_NUM_SPARSE_LEVELS_ARB
    GL_2PASS_1_SGIS
    GL_MODELVIEW17_ARB
    GL_STENCIL_INDEX8
    GL_COPY_WRITE_BUFFER_BINDING
    GL_IMAGE_MAG_FILTER_HP
    GL_ASYNC_MARKER_SGIX
    GL_MAX_PROGRAM_OUTPUT_VERTICES_NV
    GL_FOG
    GL_BUFFER_SIZE_ARB
    GL_INDEX_MATERIAL_EXT
    GL_OUTPUT_COLOR0_EXT
    GL_FIRST_TO_REST_NV
    GL_SRC_ATOP_NV
    GL_LUMINANCE_ALPHA32UI_EXT
    GL_INT8_VEC2_NV
    GL_MAX_PROGRAM_MATRICES_ARB
    GL_MAX_IMAGE_UNITS
    GL_NORMAL_ARRAY_EXT
    GL_ACCUM_BLUE_BITS
    GL_RGBA_S3TC
    GL_COMPRESSED_RGB_ARB
    GL_DEBUG_TYPE_MARKER_KHR
    GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT
    GL_POINT_SPRITE_COORD_ORIGIN
    GL_NUM_VIRTUAL_PAGE_SIZES_ARB
    GL_INVALID_OPERATION
    GL_REFERENCED_BY_FRAGMENT_SHADER
    GL_PALETTE8_RGBA8_OES
    GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT
    GL_OP_LOG_BASE_2_EXT
    GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
    GL_TEXTURE_MAG_SIZE_NV
    GL_BOUNDING_BOX_NV
    GL_RENDERBUFFER_INTERNAL_FORMAT
    GL_TEXTURE17
    GL_NEGATIVE_W_EXT
    GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT
    GL_VIRTUAL_PAGE_SIZE_Y_AMD
    GL_VERTEX_ATTRIB_MAP1_APPLE
    GL_VARIABLE_D_NV
    GL_BACK_SECONDARY_COLOR_NV
    GL_MAX_3D_TEXTURE_SIZE_EXT
    GL_OBJECT_BUFFER_SIZE_ATI
    GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP
    GL_STORAGE_CACHED_APPLE
    GL_SCREEN_KHR
    GL_VERTEX_ID_NV
    GL_MAX_RATIONAL_EVAL_ORDER_NV
    GL_FONT_GLYPHS_AVAILABLE_NV
    GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB
    GL_CONSERVATIVE_RASTERIZATION_NV
    GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR
    GL_INT64_VEC2_NV
    GL_CONVOLUTION_1D
    GL_UNPACK_SKIP_IMAGES_EXT
    GL_TIME_ELAPSED
    GL_DISJOINT_NV
    GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV
    GL_RENDERBUFFER_RED_SIZE_EXT
    GL_MODELVIEW14_ARB
    GL_COMPRESSED_RGBA_ASTC_6x5_KHR
    GL_MAP2_VERTEX_ATTRIB14_4_NV
    GL_COUNTER_RANGE_AMD
    GL_OUTPUT_TEXTURE_COORD10_EXT
    GL_TEXTURE_4DSIZE_SGIS
    GL_VIDEO_COLOR_CONVERSION_MAX_NV
    GL_BUFFER_OBJECT_EXT
    GL_COMPRESSED_INTENSITY
    GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS
    GL_COMPRESSED_RGB8_ETC2
    GL_UNSIGNED_SHORT_4_4_4_4_REV
    GL_MAX_UNIFORM_LOCATIONS
    GL_PERFQUERY_COUNTER_RAW_INTEL
    GL_DRAW_BUFFER4_ARB
    GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR
    GL_DECODE_EXT
    GL_FOG_COORDINATE_ARRAY_POINTER
    GL_SECONDARY_COLOR_ARRAY_SIZE_EXT
    GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
    GL_PROGRAM_KHR
    GL_RED_MAX_CLAMP_INGR
    GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX
    GL_UNIFORM_BUFFER_UNIFIED_NV
    GL_MAX_ASYNC_DRAW_PIXELS_SGIX
    GL_LUMINANCE32UI_EXT
    GL_SIGNED_LUMINANCE8_ALPHA8_NV
    GL_EVAL_VERTEX_ATTRIB4_NV
    GL_EQUIV
    GL_CLAMP_READ_COLOR_ARB
    GL_PRESERVE_ATI
    GL_COPY_INVERTED
    GL_ALPHA32I_EXT
    GL_SUPERSAMPLE_SCALE_Y_NV
    GL_TANGENT_ARRAY_TYPE_EXT
    GL_DOUBLE_MAT3
    GL_COLOR_TABLE_GREEN_SIZE_SGI
    GL_ATTRIB_ARRAY_STRIDE_NV
    GL_COLOR_ARRAY_LIST_STRIDE_IBM
    GL_DRAW_FRAMEBUFFER_EXT
    GL_MAX_LIGHTS
    GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS
    GL_PATH_FILL_MASK_NV
    GL_OR_REVERSE
    GL_MODELVIEW30_ARB
    GL_GUILTY_CONTEXT_RESET_KHR
    GL_PROJECTION_STACK_DEPTH
    GL_SEPARATE_ATTRIBS_EXT
    GL_MATRIX_MODE
    GL_INTERNALFORMAT_ALPHA_TYPE
    GL_SPRITE_AXIS_SGIX
    GL_SRGB
    GL_MAX_TEXTURE_COORDS_NV
    GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT
    GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB
    GL_BINORMAL_ARRAY_TYPE_EXT
    GL_TEXTURE11_ARB
    GL_VERTEX_ATTRIB_ARRAY_INTEGER_EXT
    GL_INSTRUMENT_BUFFER_POINTER_SGIX
    GL_SRC1_COLOR
    GL_SUCCESS_NV
    GL_CON_5_ATI
    GL_BUMP_ROT_MATRIX_SIZE_ATI
    GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT
    GL_MVP_MATRIX_EXT
    GL_TEXTURE_COMPONENTS
    GL_ALIASED_POINT_SIZE_RANGE
    GL_COMPRESSED_RGBA_ASTC_5x5_KHR
    GL_MAX_VERTEX_UNIFORM_VECTORS
    GL_ALPHA_BIAS
    GL_IMAGE_BINDING_FORMAT
    GL_RGBA16UI
    GL_PACK_SKIP_IMAGES_EXT
    GL_PACK_ROW_BYTES_APPLE
    GL_NUM_ACTIVE_VARIABLES
    GL_DUAL_LUMINANCE12_SGIS
    GL_SAMPLES_EXT
    GL_INT_IMAGE_CUBE
    GL_COLOR_ATTACHMENT8_EXT
    GL_MULTISAMPLE_EXT
    GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT
    GL_MAX_CLIENT_ATTRIB_STACK_DEPTH

cdef enum ContextProfileMask:
    GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
    GL_CONTEXT_CORE_PROFILE_BIT

cdef enum TextureStorageMaskAMD:
    GL_TEXTURE_STORAGE_SPARSE_BIT_AMD

cdef enum FragmentShaderDestModMaskATI:
    GL_SATURATE_BIT_ATI
    GL_2X_BIT_ATI
    GL_HALF_BIT_ATI
    GL_EIGHTH_BIT_ATI
    GL_8X_BIT_ATI
    GL_QUARTER_BIT_ATI
    GL_4X_BIT_ATI

cdef enum FfdMaskSGIX:
    GL_TEXTURE_DEFORMATION_BIT_SGIX
    GL_GEOMETRY_DEFORMATION_BIT_SGIX

cdef enum TransformFeedbackTokenNV:
    GL_SKIP_COMPONENTS4_NV
    GL_SKIP_COMPONENTS1_NV
    GL_SKIP_COMPONENTS2_NV
    GL_NEXT_BUFFER_NV
    GL_SKIP_COMPONENTS3_NV

cdef enum MapTextureFormatINTEL:
    GL_LAYOUT_LINEAR_INTEL
    GL_LAYOUT_DEFAULT_INTEL
    GL_LAYOUT_LINEAR_CPU_CACHED_INTEL

cdef enum AttributeType:
    GL_FLOAT_MAT3_ARB
    GL_FLOAT_MAT4
    GL_SAMPLER_1D_SHADOW
    GL_BOOL_VEC2_ARB
    GL_SAMPLER_1D_SHADOW_ARB
    GL_BOOL_VEC3_ARB
    GL_FLOAT_VEC2_ARB
    GL_BOOL_VEC3
    GL_FLOAT_MAT4_ARB
    GL_FLOAT_VEC3
    GL_BOOL
    GL_SAMPLER_3D_ARB
    GL_SAMPLER_2D
    GL_INT_VEC3
    GL_FLOAT_MAT2
    GL_SAMPLER_1D
    GL_SAMPLER_2D_SHADOW
    GL_FLOAT_MAT4x2
    GL_FLOAT_VEC3_ARB
    GL_SAMPLER_2D_SHADOW_ARB
    GL_SAMPLER_2D_RECT_SHADOW
    GL_INT_VEC4_ARB
    GL_SAMPLER_2D_ARB
    GL_SAMPLER_CUBE
    GL_BOOL_VEC4_ARB
    GL_INT_VEC2
    GL_FLOAT_MAT2_ARB
    GL_FLOAT_VEC4_ARB
    GL_INT_VEC3_ARB
    GL_FLOAT_VEC2
    GL_FLOAT_MAT3x4
    GL_BOOL_VEC2
    GL_FLOAT_MAT2x3
    GL_SAMPLER_2D_RECT_ARB
    GL_SAMPLER_1D_ARB
    GL_BOOL_VEC4
    GL_SAMPLER_2D_RECT_SHADOW_ARB
    GL_FLOAT_MAT3x2
    GL_BOOL_ARB
    GL_FLOAT_MAT4x3
    GL_FLOAT_MAT2x4
    GL_INT_VEC4
    GL_SAMPLER_CUBE_ARB
    GL_FLOAT_VEC4
    GL_SAMPLER_3D
    GL_INT_VEC2_ARB
    GL_SAMPLER_2D_RECT
    GL_FLOAT_MAT3

cdef enum ShaderType:
    GL_VERTEX_SHADER
    GL_FRAGMENT_SHADER_ARB
    GL_FRAGMENT_SHADER
    GL_VERTEX_SHADER_ARB

cdef enum SyncObjectMask:
    GL_SYNC_FLUSH_COMMANDS_BIT

cdef enum ClientAttribMask:
    GL_CLIENT_VERTEX_ARRAY_BIT
    GL_CLIENT_PIXEL_STORE_BIT
    GL_CLIENT_ALL_ATTRIB_BITS

cdef enum MapBufferUsageMask:
    GL_SPARSE_STORAGE_BIT_ARB
    GL_MAP_UNSYNCHRONIZED_BIT
    GL_MAP_FLUSH_EXPLICIT_BIT
    GL_MAP_READ_BIT
    GL_CLIENT_STORAGE_BIT
    GL_MAP_WRITE_BIT
    GL_MAP_INVALIDATE_RANGE_BIT
    GL_DYNAMIC_STORAGE_BIT
    GL_MAP_COHERENT_BIT
    GL_MAP_PERSISTENT_BIT
    GL_MAP_INVALIDATE_BUFFER_BIT

cdef enum RegisterCombinerPname:
    GL_SRC1_ALPHA
    GL_ADD_SIGNED
    GL_SOURCE2_ALPHA_EXT
    GL_SRC0_RGB
    GL_OPERAND1_RGB_EXT
    GL_SOURCE1_ALPHA_EXT
    GL_ADD_SIGNED_ARB
    GL_RGB_SCALE
    GL_PRIMARY_COLOR_ARB
    GL_SOURCE2_RGB_ARB
    GL_SOURCE1_RGB_ARB
    GL_OPERAND2_ALPHA_ARB
    GL_SOURCE0_RGB
    GL_COMBINE_ALPHA_ARB
    GL_PREVIOUS_ARB
    GL_OPERAND1_ALPHA
    GL_OPERAND2_RGB_EXT
    GL_COMBINE_ALPHA_EXT
    GL_SRC2_RGB
    GL_COMBINE
    GL_INTERPOLATE_EXT
    GL_SOURCE1_RGB_EXT
    GL_COMBINE_RGB_ARB
    GL_COMBINE_EXT
    GL_OPERAND0_ALPHA
    GL_SRC2_ALPHA
    GL_PREVIOUS
    GL_OPERAND2_RGB
    GL_SOURCE1_RGB
    GL_OPERAND0_RGB_EXT
    GL_SOURCE2_RGB
    GL_OPERAND1_RGB
    GL_SOURCE0_RGB_EXT
    GL_SOURCE1_ALPHA
    GL_OPERAND0_RGB
    GL_OPERAND0_RGB_ARB
    GL_RGB_SCALE_ARB
    GL_SOURCE0_ALPHA_EXT
    GL_SRC1_RGB
    GL_OPERAND3_ALPHA_NV
    GL_ADD_SIGNED_EXT
    GL_SOURCE3_RGB_NV
    GL_OPERAND2_ALPHA
    GL_PREVIOUS_EXT
    GL_SOURCE0_ALPHA
    GL_COMBINE_ALPHA
    GL_SOURCE2_RGB_EXT
    GL_CONSTANT
    GL_INTERPOLATE
    GL_RGB_SCALE_EXT
    GL_OPERAND1_ALPHA_ARB
    GL_CONSTANT_EXT
    GL_OPERAND3_RGB_NV
    GL_SOURCE0_ALPHA_ARB
    GL_COMBINE_ARB
    GL_SOURCE3_ALPHA_NV
    GL_CONSTANT_ARB
    GL_OPERAND1_RGB_ARB
    GL_SOURCE0_RGB_ARB
    GL_OPERAND0_ALPHA_EXT
    GL_OPERAND0_ALPHA_ARB
    GL_COMBINE_RGB_EXT
    GL_SOURCE2_ALPHA
    GL_PRIMARY_COLOR_EXT
    GL_PRIMARY_COLOR
    GL_CONSTANT_NV
    GL_OPERAND2_ALPHA_EXT
    GL_SOURCE1_ALPHA_ARB
    GL_SRC0_ALPHA
    GL_COMBINE_RGB
    GL_INTERPOLATE_ARB
    GL_OPERAND2_RGB_ARB
    GL_SOURCE2_ALPHA_ARB
    GL_OPERAND1_ALPHA_EXT

cdef enum PathRenderingTokenNV:
    GL_RELATIVE_QUADRATIC_CURVE_TO_NV
    GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV
    GL_MOVE_TO_NV
    GL_RELATIVE_ROUNDED_RECT4_NV
    GL_RELATIVE_SMALL_CW_ARC_TO_NV
    GL_RELATIVE_LARGE_CCW_ARC_TO_NV
    GL_ROUNDED_RECT8_NV
    GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV
    GL_RELATIVE_HORIZONTAL_LINE_TO_NV
    GL_RECT_NV
    GL_RELATIVE_ROUNDED_RECT8_NV
    GL_DUP_LAST_CUBIC_CURVE_TO_NV
    GL_LARGE_CW_ARC_TO_NV
    GL_RELATIVE_SMALL_CCW_ARC_TO_NV
    GL_RELATIVE_CONIC_CURVE_TO_NV
    GL_SHARED_EDGE_NV
    GL_ROUNDED_RECT_NV
    GL_SMOOTH_CUBIC_CURVE_TO_NV
    GL_RELATIVE_ROUNDED_RECT_NV
    GL_SMALL_CW_ARC_TO_NV
    GL_LARGE_CCW_ARC_TO_NV
    GL_DUP_FIRST_CUBIC_CURVE_TO_NV
    GL_VERTICAL_LINE_TO_NV
    GL_ROUNDED_RECT4_NV
    GL_RELATIVE_RECT_NV
    GL_HORIZONTAL_LINE_TO_NV
    GL_RELATIVE_ROUNDED_RECT2_NV
    GL_QUADRATIC_CURVE_TO_NV
    GL_CUBIC_CURVE_TO_NV
    GL_SMOOTH_QUADRATIC_CURVE_TO_NV
    GL_RELATIVE_MOVE_TO_NV
    GL_RELATIVE_ARC_TO_NV
    GL_RELATIVE_CUBIC_CURVE_TO_NV
    GL_CONIC_CURVE_TO_NV
    GL_SMALL_CCW_ARC_TO_NV
    GL_ARC_TO_NV
    GL_RELATIVE_LINE_TO_NV
    GL_LINE_TO_NV
    GL_CLOSE_PATH_NV
    GL_ROUNDED_RECT2_NV
    GL_CIRCULAR_CCW_ARC_TO_NV
    GL_CIRCULAR_TANGENT_ARC_TO_NV
    GL_RELATIVE_VERTICAL_LINE_TO_NV
    GL_CIRCULAR_CW_ARC_TO_NV
    GL_RESTART_PATH_NV
    GL_RELATIVE_LARGE_CW_ARC_TO_NV

cdef enum CommandOpcodesNV:
    GL_ATTRIBUTE_ADDRESS_COMMAND_NV
    GL_ELEMENT_ADDRESS_COMMAND_NV
    GL_POLYGON_OFFSET_COMMAND_NV
    GL_DRAW_ARRAYS_STRIP_COMMAND_NV
    GL_UNIFORM_ADDRESS_COMMAND_NV
    GL_DRAW_ELEMENTS_COMMAND_NV
    GL_TERMINATE_SEQUENCE_COMMAND_NV
    GL_FRONT_FACE_COMMAND_NV
    GL_DRAW_ARRAYS_COMMAND_NV
    GL_LINE_WIDTH_COMMAND_NV
    GL_BLEND_COLOR_COMMAND_NV
    GL_STENCIL_REF_COMMAND_NV
    GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV
    GL_DRAW_ELEMENTS_STRIP_COMMAND_NV
    GL_SCISSOR_COMMAND_NV
    GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV
    GL_ALPHA_REF_COMMAND_NV
    GL_VIEWPORT_COMMAND_NV
    GL_NOP_COMMAND_NV

cdef enum UseProgramStageMask:
    GL_ALL_SHADER_BITS_EXT
    GL_COMPUTE_SHADER_BIT
    GL_TESS_CONTROL_SHADER_BIT
    GL_FRAGMENT_SHADER_BIT
    GL_TESS_EVALUATION_SHADER_BIT
    GL_GEOMETRY_SHADER_BIT
    GL_ALL_SHADER_BITS
    GL_VERTEX_SHADER_BIT_EXT
    GL_FRAGMENT_SHADER_BIT_EXT
    GL_VERTEX_SHADER_BIT

cdef enum ContainerType:
    GL_PROGRAM_OBJECT_ARB
    GL_PROGRAM_OBJECT_EXT

cdef enum PathRenderingMaskNV:
    GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV
    GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV
    GL_FONT_UNDERLINE_THICKNESS_BIT_NV
    GL_FONT_UNDERLINE_POSITION_BIT_NV
    GL_FONT_X_MAX_BOUNDS_BIT_NV
    GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV
    GL_GLYPH_WIDTH_BIT_NV
    GL_FONT_ASCENDER_BIT_NV
    GL_FONT_Y_MIN_BOUNDS_BIT_NV
    GL_GLYPH_HAS_KERNING_BIT_NV
    GL_FONT_Y_MAX_BOUNDS_BIT_NV
    GL_FONT_HAS_KERNING_BIT_NV
    GL_FONT_X_MIN_BOUNDS_BIT_NV
    GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV
    GL_FONT_UNITS_PER_EM_BIT_NV
    GL_FONT_NUM_GLYPH_INDICES_BIT_NV
    GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV
    GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV
    GL_GLYPH_VERTICAL_BEARING_X_BIT_NV
    GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV
    GL_FONT_DESCENDER_BIT_NV
    GL_FONT_HEIGHT_BIT_NV
    GL_BOLD_BIT_NV
    GL_GLYPH_HEIGHT_BIT_NV
    GL_ITALIC_BIT_NV

cdef enum AttribMask:
    GL_LIGHTING_BIT
    GL_MULTISAMPLE_BIT_ARB
    GL_MULTISAMPLE_BIT_3DFX
    GL_TRANSFORM_BIT
    GL_ACCUM_BUFFER_BIT
    GL_TEXTURE_BIT
    GL_LINE_BIT
    GL_STENCIL_BUFFER_BIT
    GL_EVAL_BIT
    GL_ENABLE_BIT
    GL_HINT_BIT
    GL_POINT_BIT
    GL_LIST_BIT
    GL_FOG_BIT
    GL_ALL_ATTRIB_BITS
    GL_CURRENT_BIT
    GL_PIXEL_MODE_BIT
    GL_POLYGON_BIT
    GL_DEPTH_BUFFER_BIT
    GL_MULTISAMPLE_BIT
    GL_SCISSOR_BIT
    GL_POLYGON_STIPPLE_BIT
    GL_VIEWPORT_BIT
    GL_MULTISAMPLE_BIT_EXT
    GL_COLOR_BUFFER_BIT

cdef enum MemoryBarrierMask:
    GL_TEXTURE_UPDATE_BARRIER_BIT_EXT
    GL_ELEMENT_ARRAY_BARRIER_BIT_EXT
    GL_SHADER_IMAGE_ACCESS_BARRIER_BIT
    GL_COMMAND_BARRIER_BIT
    GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT
    GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT
    GL_ALL_BARRIER_BITS_EXT
    GL_UNIFORM_BARRIER_BIT_EXT
    GL_TRANSFORM_FEEDBACK_BARRIER_BIT
    GL_ATOMIC_COUNTER_BARRIER_BIT_EXT
    GL_SHADER_STORAGE_BARRIER_BIT
    GL_FRAMEBUFFER_BARRIER_BIT_EXT
    GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT
    GL_PIXEL_BUFFER_BARRIER_BIT_EXT
    GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT
    GL_TEXTURE_UPDATE_BARRIER_BIT
    GL_COMMAND_BARRIER_BIT_EXT
    GL_BUFFER_UPDATE_BARRIER_BIT_EXT
    GL_TEXTURE_FETCH_BARRIER_BIT_EXT
    GL_ATOMIC_COUNTER_BARRIER_BIT
    GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
    GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV
    GL_BUFFER_UPDATE_BARRIER_BIT
    GL_ALL_BARRIER_BITS
    GL_PIXEL_BUFFER_BARRIER_BIT
    GL_QUERY_BUFFER_BARRIER_BIT
    GL_ELEMENT_ARRAY_BARRIER_BIT
    GL_FRAMEBUFFER_BARRIER_BIT
    GL_TEXTURE_FETCH_BARRIER_BIT
    GL_UNIFORM_BARRIER_BIT

cdef enum TriangleListSUN:
    GL_RESTART_SUN
    GL_REPLACE_MIDDLE_SUN
    GL_REPLACE_OLDEST_SUN

cdef enum SpecialNumbers:
    GL_FALSE
    GL_NO_ERROR
    GL_INVALID_INDEX
    GL_ONE
    GL_ZERO
    GL_NONE
    GL_TIMEOUT_IGNORED
    GL_TRUE

cdef enum PerformanceQueryCapsMaskINTEL:
    GL_PERFQUERY_GLOBAL_CONTEXT_INTEL
    GL_PERFQUERY_SINGLE_CONTEXT_INTEL

cdef enum FragmentShaderDestMaskATI:
    GL_GREEN_BIT_ATI
    GL_RED_BIT_ATI
    GL_BLUE_BIT_ATI
