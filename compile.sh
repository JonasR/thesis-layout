#!/bin/bash
pdflatex -shell-escape -interaction=nonstopmode thesis.tex
bibtex thesis.aux
makeindex thesis.nlo -s nomencl.ist -o 'thesis.nls'
pdflatex -shell-escape -interaction=nonstopmode thesis.tex
pdflatex -shell-escape -interaction=nonstopmode thesis.tex
evince thesis.pdf
