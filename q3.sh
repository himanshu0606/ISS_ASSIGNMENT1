#!/bin/bash
file=$1
size=$(stat -c%s "$file")
echo "size of quotes.txt = $size bytes"

wc -l < $file 
wc -w < $file
awk '{ print "line no: " NR " "  "count of words: " NF }' < $file