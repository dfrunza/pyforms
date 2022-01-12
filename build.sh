#!/bin/bash

# Compile XForms with :
#    $ CFLAGS=-fPIC ./configure --prefix=/usr/local --disable-shared --enable-static

PYVER=3.8
BASE=$PWD

#mkdir -p $BASE/build
#python3 setup.py build_ext -i
#cp pyforms.cpython-36m-x86_64-linux-gnu.so ../nf-tools/pyforms.so
#cp pyforms.cpython-38-x86_64-linux-gnu.so ../nf-tools/pyforms.so

# [2022-Jan-11]
# Calls to 'stat()' have been replaced with '__xstat' in the 'xforms/lib/listdir.c' file.
# Otherwise linking fails with "undefined reference to `stat'" errors.

cython pyforms.pyx -3
gcc -fPIC -Wall -fwrapv -fno-strict-aliasing -I/usr/include/python$PYVER -I./xforms/lib/include -c pyforms.c
ld -shared -L/usr/lib/python$PYVER -L./xforms/lib -o pyforms-py$PYVER.so pyforms.o -lpython$PYVER -lc -lm -lX11 -lforms

cp pyforms-py$PYVER.so ../nf-tools/pyforms.so
