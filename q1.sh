#!/bin/bash
grep -v '^$' quotes.txt > temp.txt
cat temp.txt
mv temp.txt quotes.txt
cat -n quotes.txt | sort -u | sort -n | cut -f2- > temp.txt
mv temp.txt quotes.txt
