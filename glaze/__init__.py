__version__ = '0.1.0'
import os


def getGladIncludePath():
    gladPath = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'glad')
    return gladPath


def getGladSourcePath():
    return os.path.join(getGladIncludePath(), 'glad.c')

