#!/bin/bash
awk -F~ '{if(NF!=0)print $2 " once said, " "\""$1"\"" }' quotes.txt > temp.txt
mv temp.txt quotes.txt