#!/bin/bash

BASE=$PWD

mkdir -p $BASE/build
python3 setup.py build_ext -i

