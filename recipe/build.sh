#!/bin/sh

mkdir build
cd build

cmake ${CMAKE_ARGS} -GNinja .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_SHARED_LIBS:BOOL=ON \
      -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
      ..

cmake --build . --config Release
cmake --build . --config Release --target install
