#!/bin/bash
rm dist/build.md
rm dist/thesis.docx
# rm dist/build.html

python concat-from-outline.py
pandoc -s -S --biblio biblio.bib --csl cell.csl dist/build.md -o dist/thesis.docx
# pandoc -s -S --biblio biblio.bib --csl cell.csl dist/build.md -o  dist/thesis.html
# pandoc dist/build.md -o dist/thesis.pdf --latex-engine=xelatex --bibliography=biblio.bib --csl=cell.csl

# pandoc dist/build.md -o  dist/auto_toc.html --toc

# pandoc dist/build.md -o dist/thesis2.pdf --latex-engine=xelatex --template latex_template.tex --bibliography=biblio.bib --csl=cell.csl

# to build pdf w/ biblio
# pandoc dist/build.md -o mymanuscript.pdf --latex-engine=xelatex --bibliography=biblio.bib --csl=cell.csl

# pandoc -H options.sty --bibliography=biblio.bib --csl=cell.csl dist/build.md --latex-engine=xelatex -o dist/mypaper.pdf
