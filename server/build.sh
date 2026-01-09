#!/usr/bin/env bash
set -e

echo "Installing build tools..."
apt update
apt install -y git cmake build-essential

echo "Cloning llama.cpp..."
git clone https://github.com/ggml-org/llama.cpp.git

cd llama.cpp
cmake -B build
cmake --build build

echo "Copying llama-server binary..."
cp build/bin/llama-server ../

echo "Build complete."
