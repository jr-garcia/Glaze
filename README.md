# Glaze
Experimental Auto-Generated Python bindings for OpenGL, created with
Cython and [Glad](https://pypi.python.org/pypi/glad)

## Status
Works partially with Glad's default loader.

* The GL binding (glaze.GL) generates and compiles, Two test demos run ok.
Some platform-specific typedefs are ommited, along with the 
functions that use them.

* Other bindings such as GLX or EGL are generated partially.
Won't compile.

![Glaze Demos](http://i.imgur.com/vVBDAqj.png?1)

###### Each demo runs at average 120 FPS when ran alone, and this speed does not change when demos are running together.

###### (tested on Thinkpad with Nvidia Quadro FX 570M and Noveau driver)