#Pharmacology Thesis

This is a repo for collecting the documents relevent to my PhD thesis paper.

The format of the text is in markdown.

The folders contain the textual content that will go into the thesis, and also helper files that are collected from external resources (such as blog posts e.g. How to write your PhD Thesis).

## To Build

run the following command in the terminal:
$sh build.sh

This concatenates all of the included files based on the outline into a file called build.md, and then runs pandoc to convert the markdown file into docx and html

The outline is located in the root directory, and named:
'outline.csv'

