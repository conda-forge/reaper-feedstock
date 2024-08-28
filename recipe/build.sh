#!/bin/bash

mkdir build
cd build
cmake ${CMAKE_ARGS} ..
make
cp reaper ${PREFIX}/bin/