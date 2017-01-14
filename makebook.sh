#! /bin/bash
perl collect.pl order.txt > out.txt
perl txt2Markdown.pl out.txt > out.htm
perl html2pdf.pl out.htm out.pdf