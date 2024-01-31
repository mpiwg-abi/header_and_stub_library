#!/bin/sh
set -eu
cmake -B build -DCMAKE_INSTALL_PREFIX="${PREFIX:-$PWD}"
cmake --build build
cmake --install build
(test -d lib64 && ln -f -s lib64 lib) || true
