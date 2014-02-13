#!/bin/bash
rm dist/build.md
rm dist/build.docx
rm dist/build.html

python concat-from-outline.py
pandoc dist/build.md -s -o dist/thesis.docx
pandoc dist/build.md -s -o  dist/thesis.html
pandoc dist/build.md -s -o  dist/auto_toc.html --toc