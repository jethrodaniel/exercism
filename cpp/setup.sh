#!/bin/bash

current_dir=${PWD##*/}
touch current_dir.{cpp, h}
mkdir build
cd build
cmake -G "Unix Makefiles" ..
make
