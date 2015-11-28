#!/bin/sh
mkdir -p build
pdflatex -output-directory build -draftmode cv.tex || exit 1
pdflatex -output-directory build cv.tex || exit 1
