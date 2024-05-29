#!/bin/bash

# This script clones last source of Sipp project, makes it and install it in this server.

set -o xtrace

sipp_source_path="./sipp-source"
sipp_build_path="./sipp-build"

git clone https://github.com/SIPp/sipp "$sipp_source_path"
mkdir -p "$sipp_build_path"
cmake -B"$sipp_build_path" -S"$sipp_source_path"
make -C "$sipp_build_path"
make install -C "$sipp_build_path"
