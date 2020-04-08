#!/bin/bash
start=$(date +"%T")
lineSize=$1
alphabet=$2

base=${#alphabet}
variantsCount=$[$base**$lineSize]

for ((i = 0; i < $variantsCount; i++)); do
  remain=$i
  for ((j = 0; j < $lineSize; j++)); do
    index=$((remain % base))
    remain=$((remain / base))
    printf "%s" ${alphabet:index:1}
  done
  printf "\n"
done
echo $start
date +"%T"
echo "------"
echo "Total variants count: $variantsCount"
