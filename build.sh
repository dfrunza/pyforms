#!/bin/bash

BASE=$PWD

#mkdir -p $BASE/build
#python3 setup.py build_ext -i
#cp pyforms.cpython-36m-x86_64-linux-gnu.so ../nf-tools/pyforms.so
#cp pyforms.cpython-38-x86_64-linux-gnu.so ../nf-tools/pyforms.so

# [2022-Jan-11]
# Calls to 'stat()' have been replaced with '__xstat' in the 'xforms/lib/listdir.c' file.
# Otherwise linking fails with "undefined reference to `stat'" errors.

cython pyforms.pyx -3
gcc -fPIC -Wall -fwrapv -fno-strict-aliasing -I/usr/include/python3.8 -I./xforms/lib/include -c pyforms.c
ld -shared -L/usr/lib/python3.8 -L./xforms/lib -o pyforms-py3.8.so pyforms.o -lpython3.8 -lc -lm -lX11 -lforms

cp pyforms-py3.8.so ../nf-tools/pyforms.so
