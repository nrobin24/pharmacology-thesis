# -*- coding: utf-8 -*-
# <nbformat>3.0</nbformat>

# <codecell>

import csv
import shutil
from subprocess import call

# create the output file
outfile = 'dist/build.md'

# open the output file
destination = open(outfile,'wb')

with open('outline.csv', 'rb') as csvfile:
     outline = csv.reader(csvfile, delimiter=',')
     for row in outline:
            print row[0]
            shutil.copyfileobj(open(row[0], 'rb'), destination)
destination.close()

#make into a docx file
#call(['pandoc build.md -s -o build.docx'])

# <codecell>


