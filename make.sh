#!/bin/sh

build_dir="build"
pdflatex_flags="-output-directory $build_dir -file-line-error -halt-on-error"

mkdir -p $build_dir
pdflatex $pdflatex_flags -draftmode cv.tex || exit 1
pdflatex $pdflatex_flags cv.tex || exit 1
