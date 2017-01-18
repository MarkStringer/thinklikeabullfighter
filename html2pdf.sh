#!/bin/bash

FILE=$1
OUT=$2
phantomjs rasterize.js "$FILE" "$OUT"
