# Glaze
Experimental Auto-Generated Python bindings for OpenGL, created with
Cython and [Glad](https://pypi.python.org/pypi/glad)

## Status
Works partially with Glad's default loader.

* The GL binding (glaze.gl) generates and compiles, Two test demos run ok.
Some platform-specific typedefs are ommited, along with the 
functions that use them.

* Other bindings such as GLX or EGL are generated partially.
Won't compile.

![Glaze Demos Image](http://i.imgur.com/yPJBkSH.png?1)
