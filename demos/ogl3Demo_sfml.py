import sfml as sf
from glaze.GL import *
import numpy as np

'''
Based on http:#www.opengl-tutorial.org/beginners-tutorials/tutorial-2-the-first-triangle/
'''


def stringToArray(string):
    return [string]


def arrayToString(array):
    strList = [0] * len(array)
    for i in range(len(array)):
        strList[i] = chr(array[i])
    return ''.join(strList)


def LoadShaders():
    # Create the shaders
    VertexShaderID = glCreateShader(GL_VERTEX_SHADER)
    FragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER)

    # Vertex Shader code
    VertexShaderCode = '''#version 330 core
    out vec3 pos;
    layout(location = 0) in vec3 vertexPosition_modelspace;
void main(){
pos = vertexPosition_modelspace;
gl_Position.xyz = vertexPosition_modelspace;
  gl_Position.w = 1.0;
}
'''
    # Fragment Shader code
    FragmentShaderCode = '''#version 330 core
out vec3 color;
in vec3 pos;
void main(){
  // color = vec3(1,0,0);
  color = pos + 0.25;
}
'''
    result = np.array([GL_FALSE], np.int32)
    InfoLogLength = np.array([0], np.int32)

    # Compile Vertex Shader
    VertexSourcePointer = stringToArray(VertexShaderCode)
    glShaderSource(VertexShaderID, 1, VertexSourcePointer, None)
    glCompileShader(VertexShaderID)

    # Check Vertex Shader
    glGetShaderiv(VertexShaderID, GL_COMPILE_STATUS, result)
    if result[0] == GL_FALSE:
        glGetShaderiv(VertexShaderID, GL_INFO_LOG_LENGTH, InfoLogLength)
        VertexShaderErrorMessage = np.empty((InfoLogLength[0],), np.int8)
        glGetShaderInfoLog(VertexShaderID, InfoLogLength, None, VertexShaderErrorMessage)
        raise RuntimeError('Compiling vertex shader: ' + arrayToString(VertexShaderErrorMessage))

    # Compile Fragment Shader
    FragmentSourcePointer = stringToArray(FragmentShaderCode)
    glShaderSource(FragmentShaderID, 1, FragmentSourcePointer, None)
    glCompileShader(FragmentShaderID)

    # Check Fragment Shader
    glGetShaderiv(FragmentShaderID, GL_COMPILE_STATUS, result)
    if result[0] == GL_FALSE:
        glGetShaderiv(FragmentShaderID, GL_INFO_LOG_LENGTH, InfoLogLength)
        FragmentShaderErrorMessage = np.empty((InfoLogLength[0],), np.int8)
        glGetShaderInfoLog(FragmentShaderID, InfoLogLength, None, FragmentShaderErrorMessage)
        raise RuntimeError('Compiling fragment shader: ' + arrayToString(FragmentShaderErrorMessage))

    # Link the program
    ProgramID = glCreateProgram()
    glAttachShader(ProgramID, VertexShaderID)
    glAttachShader(ProgramID, FragmentShaderID)
    glLinkProgram(ProgramID)

    # Check the program
    glGetProgramiv(ProgramID, GL_LINK_STATUS, result)
    if result[0] == GL_FALSE:
        glGetProgramiv(ProgramID, GL_INFO_LOG_LENGTH, InfoLogLength)
        ProgramErrorMessage = np.empty((InfoLogLength[0],), np.int8)
        glGetProgramInfoLog(ProgramID, InfoLogLength, None, ProgramErrorMessage)
        RuntimeError('Linking program: ' + arrayToString(ProgramErrorMessage))

    glDetachShader(ProgramID, VertexShaderID)
    glDetachShader(ProgramID, FragmentShaderID)

    glDeleteShader(VertexShaderID)
    glDeleteShader(FragmentShaderID)

    return ProgramID


def main():
    w, h = [640, 480]

    window = sf.Window(sf.VideoMode(w, h), 'Modern OpenGL+SFML Glaze Demo')
    window.vertical_synchronization = True
    loadGL()  # This should raise an exception on failure
    print('OpenGL Version: {}.{}'.format(window.settings.major_version, window.settings.minor_version))

    # An array of 3 vectors which represents 3 vertices
    g_vertex_buffer_data = np.array([-1.0, -1.0, 0.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.0], np.float32)
    # This will identify our vertex buffer
    vertexbuffer = np.array([0], np.uint32)
    # Generate 1 buffer, put the resulting identifier in vertexbuffer
    glGenBuffers(1, vertexbuffer)
    # The following commands will talk about our 'vertexbuffer' buffer
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer)
    # Give our vertices to OpenGL.
    glBufferData(GL_ARRAY_BUFFER,
                 g_vertex_buffer_data.strides[0] * len(g_vertex_buffer_data),  # todo: replace with sizeof
                 g_vertex_buffer_data, GL_STATIC_DRAW)

    VertexArrayID = np.array([0], np.uint32)
    glGenVertexArrays(1, VertexArrayID)
    glBindVertexArray(VertexArrayID)

    glClearColor(0.0, 0.4, 0.4, 0.0)
    programID = LoadShaders()
    print('Press ESC to exit.')
    # run the main loop
    running = True
    while running:
        event = window.poll_event()
        while event:
            if event == sf.CloseEvent:
                # # end the program
                running = False
            elif event == sf.ResizeEvent:
                # # adjust the viewport when the window is resized
                glViewport(0, 0, event.width, event.height)
            elif event == sf.KeyEvent:
                if sf.Keyboard.is_key_pressed(sf.Keyboard.ESCAPE):
                    running = False
            event = window.poll_event()

        # # clear the buffers
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        # Use our shader
        glUseProgram(programID)
        # Draw triangle...
        # 1rst attribute buffer : vertices
        glEnableVertexAttribArray(0)
        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer)
        glVertexAttribPointer(0,  # attribute 0. No particular reason for 0, but must match the layout in the shader.
                              3,  # size
                              GL_FLOAT,  # type
                              GL_FALSE,  # normalized?
                              0,  # stride
                              0)  # array buffer offset)
        # Draw the triangle !
        glDrawArrays(GL_TRIANGLES, 0, 3)  # Starting from vertex 0 3 vertices total -> 1 triangle
        glDisableVertexAttribArray(0)
        # end the current frame (internally swaps the front and back buffers)
        window.display()
    glDeleteBuffers(1, vertexbuffer)


if __name__ == '__main__':
    main()
