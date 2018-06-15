#!/bin/bash

current_dir=${PWD##*/}          # The exercise root
current_dir=${current_dir//-/_} # Replace hyphens with underscores

touch $current_dir.{cpp,h}
mkdir -p build
cd build
cmake -G "Unix Makefiles" ..
make
