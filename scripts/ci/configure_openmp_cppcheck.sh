#!/bin/bash
set -e

# Create build directory
sh scripts/utils/create_empty_directory.sh build

# Configure project
sh scripts/utils/configure.sh Debug -DSTDGPU_BACKEND=STDGPU_BACKEND_OPENMP -DSTDGPU_ANALYZE_WITH_CPPCHECK=ON -DSTDGPU_TREAT_WARNINGS_AS_ERRORS=ON -Dthrust_ROOT=external/thrust
