from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

# Compile XForms with :
#    $ CFLAGS=-fPIC ./configure --prefix=/usr/local --disable-shared --enable-static

setup(
    name = "PyForms",

    ext_modules = cythonize([
        Extension('pyforms', ['pyforms.pyx'],
            libraries = ['forms', 'X11', 'python3.6m'],
            include_dirs = ['runtime/include', 'runtime/include/python3.6m', 'xforms/lib/include'],
            library_dirs = ['runtime/lib', 'xforms/lib'],
            #extra_compile_args = [],
            #extra_link_args = []
        )],
        compiler_directives = {
            'language_level': '3',
            'c_string_type': 'str',
            'c_string_encoding': 'ascii',
        },
        build_dir = 'build',
        gdb_debug = True
    )
)
