#!/bin/bash

FILE="$1";
perl collect.pl "$FILE" > out.txt
perl txt2Markdown.pl out.txt > out.htm
html2pdf.sh out.htm out.pdf
perl md2epub.pl out.txt out.epub
