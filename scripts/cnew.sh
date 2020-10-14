#!/bin/bash
SCRIPT_DIR=$(dirname $0)

cp $SCRIPT_DIR/default.cpp $(pwd)/$1
vim $(pwd)/$1
