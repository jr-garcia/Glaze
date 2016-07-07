from OpenGL.GLU import *
from OpenGL.GLUT import *
from PIL import Image
import sys
import numpy as np

from glaze.gl import *


'''
I can't find the source of this example, that I slightly modified to work with Glaze.
If you know/are the original author of the example, please open an Issue on Github to
write an attribution here.
'''

# after I import all module , I set some vars
angle = 0.1
texture = 0
# this var set the type of reflection
reflMode = GL.GL_REFLECTION_MAP_ARB
lsecs = 0
fts = 0


# this load a cube map of six images
def loadCubemap(faces, path=""):
    texture = np.empty((1,), dtype=np.uint32)
    glGenTextures(1, texture)
    target_map = GL.GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
    glBindTexture(GL.GL_TEXTURE_CUBE_MAP_ARB, texture)
    glPixelStorei(GL.GL_PACK_ALIGNMENT, 1)
    glTexParameteri(GL.GL_TEXTURE_2D, GL.GL_TEXTURE_WRAP_S, GL.GL_REPEAT)
    glTexParameteri(GL.GL_TEXTURE_2D, GL.GL_TEXTURE_WRAP_T, GL.GL_REPEAT)
    glTexParameteri(GL.GL_TEXTURE_2D, GL.GL_TEXTURE_MAG_FILTER, GL.GL_LINEAR)
    glTexParameteri(GL.GL_TEXTURE_2D, GL.GL_TEXTURE_MIN_FILTER, GL.GL_LINEAR)
    glEnable(GL.GL_TEXTURE_CUBE_MAP_ARB)

    for face in faces:
        if path != "":
            file = path + "/" + f
        else:
            file = face
        image = Image.open(file)
        width = image.size[0]
        height = image.size[1]
        image = image.tobytes("raw", "RGBX", 0, -1)
        gluBuild2DMipmaps(target_map, 3, width, height, GL.GL_RGBA, GL.GL_UNSIGNED_BYTE, image)
        target_map = target_map + 1
    return texture


# this is default init of opengl
def init():
    if not loadGL():
        raise RuntimeError('Error initializing Glad.')
    glClearColor(.40, .30, .90, 0.0)
    glClearDepth(1.0)
    glDepthFunc(GL.GL_LEQUAL)
    glEnable(GL.GL_DEPTH_TEST)
    glHint(GL.GL_POLYGON_SMOOTH_HINT, GL.GL_NICEST)
    glHint(GL.GL_PERSPECTIVE_CORRECTION_HINT, GL.GL_NICEST)


# this help us when resize the window
def reshape(width, height):
    glViewport(0, 0, width, height)
    glMatrixMode(GL.GL_PROJECTION)
    glLoadIdentity()
    gluPerspective(55.0, float(width) / float(height), 1.0, 60.0)
    glMatrixMode(GL.GL_MODELVIEW)
    glLoadIdentity()
    gluLookAt(0.0, 6.0, 0.0, 4.0, -4.0, 4.0, 0.0, 0.5, 0.0)


def display():
    global texture, reflMode
    global lsecs
    global fts

    ct = glutGet(GLUT_ELAPSED_TIME)
    fts += 1.0
    tt = ct - lsecs
    if tt >= 1000:
        lsecs = ct
        glutSetWindowTitle('Glaze Texture Cubemap Demo | FPS:' + str(round((fts / tt) * 1000, 2)))
        fts = 0

    glClear(AttribMask.GL_COLOR_BUFFER_BIT | AttribMask.GL_DEPTH_BUFFER_BIT)
    glEnable(GL.GL_TEXTURE_CUBE_MAP_ARB)
    glEnable(GL.GL_TEXTURE_GEN_S)
    glEnable(GL.GL_TEXTURE_GEN_T)
    glEnable(GL.GL_TEXTURE_GEN_R)
    glTexGeni(GL.GL_S, GL.GL_TEXTURE_GEN_MODE, reflMode)
    glTexGeni(GL.GL_T, GL.GL_TEXTURE_GEN_MODE, reflMode)
    glTexGeni(GL.GL_R, GL.GL_TEXTURE_GEN_MODE, reflMode)

    glBindTexture(GL.GL_TEXTURE_CUBE_MAP_ARB, texture)
    glPushMatrix()
    glTranslatef(2, 2, 2)
    glRotatef(angle, 200, 10, 500)

    glutSolidTeapot(1.5)

    glPopMatrix()
    glutSwapBuffers()


# this test the keyboard
def keyPressed(*args):
    global reflMode
    try:
        key = args[0].decode()
    except:
        key = args[0]

    if key == '\033':
        sys.exit()
    elif key == 'n' or key == 'N':
        reflMode = GL.GL_NORMAL_MAP_ARB
    elif key == 'r' or key == 'R':
        reflMode = GL.GL_REFLECTION_MAP_ARB


# this will animate , is a idle function
def animate():
    global angle

    angle = 0.01 * glutGet(GLUT_ELAPSED_TIME)

    glutPostRedisplay()


# ... and the main function
def main():
    global texture

    glutInit(sys.argv)
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH)
    glutInitWindowSize(600, 400)
    glutInitWindowPosition(0, 0)

    glutCreateWindow("Glaze Texture Cubemap Demo | Initializing...")

    glutDisplayFunc(display)
    glutIdleFunc(animate)
    glutReshapeFunc(reshape)
    glutKeyboardFunc(keyPressed)

    init()

    texture = loadCubemap(("111.JPG", "111.JPG", "111.JPG", "111.JPG", "111.JPG", "111.JPG"), "")

    glutMainLoop()


print("Hit ESC key to quit.")

main()
