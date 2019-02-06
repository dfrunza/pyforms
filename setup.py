from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    name = "PyForms",
    ext_modules = cythonize([Extension('pyforms', ['pyforms.pyx'], libraries=['forms', 'X11', 'python3.6m'],
                                       include_dirs=['build/include'], library_dirs=['build/lib'])],
                            compiler_directives={'language_level': '3'}, build_dir='build')
)
