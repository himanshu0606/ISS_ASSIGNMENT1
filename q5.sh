#!/bin/bash
s="$1"
len=${#s}
echo "og: $s"
echo "$s" | rev
echo "$s" | rev | tr a-z b-za
for (( i=($len-1)/2; i>=0; i-- ));
do 
   rev2=$rev2${s:$i:1}
done
rev3="${s:((len/2))}"
echo "$rev2$rev3"

