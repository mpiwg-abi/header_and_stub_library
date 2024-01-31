#!/bin/sh
set -eu
meson setup build --prefix="${PREFIX:-$PWD}"
meson compile -C build
meson install -C build
(test -d lib64 && ln -f -s lib64 lib) || true
