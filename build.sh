#!/bin/bash
rm dist/build.md
rm dist/build.docx
rm dist/build.html

python concat-from-outline.py
pandoc dist/build.md -s -o dist/build.docx
pandoc dist/build.md -s -o  dist/build.html --toc