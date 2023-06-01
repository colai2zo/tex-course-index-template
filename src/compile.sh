#!/bin/bash
makeindex main.idx -s lib/std.ist
pdflatex -synctex=1 -interaction=nonstopmode main.tex
cp main.idx main.idx.bak
rm main.ilg main.ind main.aux main.synctex.gz 
