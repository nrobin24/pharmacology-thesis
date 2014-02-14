#!/bin/bash
rm dist/build.md
rm dist/build.docx
rm dist/build.html

python concat-from-outline.py
pandoc -s -S --biblio biblio.bib --csl cell.csl dist/build.md -o dist/thesis.docx
pandoc -s -S --biblio biblio.bib --csl cell.csl dist/build.md -o  dist/thesis.html
pandoc dist/build.md -o  dist/auto_toc.html --toc

# to build pdf w/ biblio
# pandoc dist/build.md -o mymanuscript.pdf --latex-engine=xelatex --bibliography=biblio.bib --csl=cell.csl