from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    ext_modules = cythonize([Extension('pyforms', ['pyforms.pyx'], libraries=['forms', 'X11', 'python2.7'])],
                            compiler_directives={'language_level': '2'}, build_dir='build')
)
