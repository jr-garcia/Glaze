# Glaze
Experimental Auto-Generated Python bindings for OpenGL, created with
Cython and [Glad](https://pypi.python.org/pypi/glad)

## Status
Works with Glad's default loader.

* The GL binding (glaze.GL) generates and compiles.

* Some platform-specific typedefs are ommited, along with the 
functions that use them.

* Other bindings such as GLX or EGL are generated partially.
Might compile (untested).

![Glaze Demos](http://i.imgur.com/vVBDAqj.png?1)


### Setup

First run:
```sh
python setup.py regen --help
```
for a list of parameters. Then run:
```sh
python setup.py install
```

The simplest commands to generate and test the GL binding would be:
 
```sh
python setup.py regen --api=gl
python setup.py develop
```

Check the demos for code differences with PyOpenGL.

The function 'glaze.GL.loadGL()' needs to be called **before** any gl* command and **after** a valid context has been created.

##### FAQ

Q: Does this intend to replace PyopenGL?

a: No.

Q: Who is the target audience for this project?

a: People who is starting an OpenGL project with Python and plans to switch to Cython eventually to achieve maximum performance. 

###### Notes:

I have not seen any performance gain when using Glaze over PyopenGL, despite removing some type checks and using 'Nogil' in the code.