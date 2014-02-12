# -*- coding: utf-8 -*-
# <nbformat>3.0</nbformat>

# <codecell>

import csv
import shutil
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

# <codecell>


