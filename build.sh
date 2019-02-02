#!/bin/bash

BASE=$PWD

mkdir -p $BASE/build
python2 setup.py build_ext -i

