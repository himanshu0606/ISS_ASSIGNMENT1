#!/bin/bash
clear
IFS=',' read -a data
len=${#data[*]}

for (( i =0; i<$len; i++ ))
do 
   for (( j=0; j<$len-$i-1; j++))
   do 
      if [[ ${data[j]} -gt ${data[j+1]} ]]
      then
          temp=${data[j]}
          data[j]=${data[j+1]}
          data[j+1]=$temp
      fi 
   done
done
echo ${data[*]}