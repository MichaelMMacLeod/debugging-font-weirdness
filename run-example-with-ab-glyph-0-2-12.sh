#!/bin/sh

set -eux

if [ -d "using-ab-glyph-0-2-12" ]; then
    cd using-ab-glyph-0-2-12/wgpu_glyph
    cargo run --example hello
else
    mkdir using-ab-glyph-0-2-12
    cd using-ab-glyph-0-2-12
    cp ../crates.tar.gz .
    gunzip crates.tar.gz
    tar xvf crates.tar
    rm -rf glyph-brush-11
    mv glyph-brush-12 glyph-brush
    cd wgpu_glyph
    cargo run --example hello
fi
