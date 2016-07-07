from OpenGL.GLU import gluLookAt, gluPerspective
from OpenGL.GLUT import *
from random import Random

# from OpenGL.GL import *
from glaze.GL import *


def keyboard(*args):
    global running
    try:
        key = args[0].decode()
    except:
        key = args[0]

    # print(key)

    if key == '\033':
        running = False


def display():
    global xpos, ypos, zpos
    global lsecs
    global fts
    global running
    if not running:
        glutLeaveMainLoop()
    ct = glutGet(GLUT_ELAPSED_TIME)
    fts += 1.0
    tt = ct - lsecs
    if tt >= 1000:
        lsecs = ct
        glutSetWindowTitle('Glaze simple Glut demo | FPS:' + str(round((fts / tt) * 1000, 2)))
        fts = 0

    # // clear the buffers
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    # // draw...
    glLoadIdentity()

    xpos += .09 * r.randint(0, 2)
    ypos += .07 * r.randint(0, 5)
    zpos += .05 * r.randint(0, 10)

    glTranslatef(0.0, 0.1, -3)
    glRotatef(xpos, 1, 0, 0)
    glRotatef(ypos, 0, 1, 0)
    glRotatef(zpos, 0, 0, 1)
    glBegin(GL_TRIANGLES)

    glColor3f(1.0, 0.0, 0.0)
    glVertex3f(0., 1.0, 0.)
    glColor3f(0.0, 1.0, 0.0)
    glVertex3f(-1.0, -1.0, 1.0)
    glColor3f(0.0, 0.0, 1.0)
    glVertex3f(1.0, -1.0, 1.0)

    # glColor3f(1.0, 1.0, 0.0)
    glColor3f(0.0, 0.0, 1.0)
    glVertex3f(1.0, -1.0, 1.0)
    glColor3f(1.0, 1.0, 0.0)
    glVertex3f(.0, -1.0, -1.0)
    glColor3f(1.0, 0.0, 0.0)
    glVertex3f(0., 1.0, 0.)

    # glColor3f(1.0, 0.0, 1.0)
    glColor3f(1.0, 0.0, 0.0)
    glVertex3f(0., 1.0, 0.)
    glColor3f(1.0, 1.0, 0.0)
    glVertex3f(0.0, -1.0, -1.0)
    glColor3f(0.0, 1.0, 0.0)
    glVertex3f(-1.0, -1.0, 1.0)

    # glColor3f(0.0, 0.0, 1.0)
    glColor3f(1.0, 1.0, 0.0)
    glVertex3f(.0, -1.0, -1.0)
    glColor3f(0.0, 0.0, 1.0)
    glVertex3f(1.0, -1.0, 1.0)
    glColor3f(0.0, 1.0, 0.0)
    glVertex3f(-1.0, -1.0, 1.0)

    glEnd()

    # // end the current frame (internally swaps the front and back buffers)
    glutSwapBuffers()


def reshape(width, height):
    global w, h, gui
    w = width
    h = height
    glViewport(0, 0, width, height)
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    gluPerspective(60, float(w) / float(h), .1, -2000)
    glMatrixMode(GL_MODELVIEW)
    try:
        gui.setSize([w, h])
    except NameError:
        pass


if __name__ == '__main__':
    w, h = [640, 480]
    fts = 0
    lsecs = 0

    glutInit()
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH)
    glutInitWindowSize(w, h)
    glutInitWindowPosition(320, 30)

    glutCreateWindow("Glaze simple Glut demo | Starting...")

    #  // load (initialize) Glad
    loadGL()

    # // run the main loop
    r = Random()
    running = True
    xpos = 0
    ypos = 0
    zpos = 0

    glEnable(GL_CULL_FACE)

    reshape(w, h)

    glutIdleFunc(display)
    glutReshapeFunc(reshape)
    glutKeyboardFunc(keyboard)

    glutMainLoop()
