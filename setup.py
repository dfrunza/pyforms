from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    name = "PyForms",

    #Extension(extra_compile_args=['-fPIC'], extra_link_args=['-nostdlib'])

    ext_modules = cythonize([Extension('pyforms', ['pyforms.pyx'], libraries=['forms', 'X11', 'python3.6m'],
                                       include_dirs=['runtime/include', 'runtime/include/python3.6m'], library_dirs=['runtime/lib'])],
                            compiler_directives={'language_level': '3'}, build_dir='build')
)
