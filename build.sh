#!/bin/bash

BASE=$PWD

mkdir -p $BASE/build
python3 setup.py build_ext -i
cp pyforms.cpython-36m-x86_64-linux-gnu.so ../nf-tools/pyforms.so
