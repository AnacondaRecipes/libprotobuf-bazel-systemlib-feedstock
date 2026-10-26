#!/bin/bash

set -euxo pipefail

mkdir -p ${PREFIX}/share/bazel/systemlibs
cp -ap ${RECIPE_DIR}/protobuf ${PREFIX}/share/bazel/systemlibs/
PROTOC_VERSION="${PKG_VERSION#*.}"
sed -i "s:PROTOC_VERSION:${PROTOC_VERSION}:" "${PREFIX}/share/bazel/systemlibs/protobuf/MODULE.bazel"

