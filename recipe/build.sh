#!/bin/bash

mkdir build
cd build
cmake -GNinja ${CMAKE_ARGS} \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DCMAKE_BUILD_TYPE=Release \
    ..
cmake --build . --verbose --config Release -- -v -j %CPU_COUNT%
cmake --install . --verbose --config Release