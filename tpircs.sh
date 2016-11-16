#!/bin/bash

echo "Insert a list of words:"
read -a words
backWords=()
for i in ${words[@]}; do
  length=${#i}
  for ((j=0; j<length; j++)); do
    i=${i:j*2:1}$i
  done
  i=${i:0:length}
  backWards+=($i)
done
echo "Output: " ${backWards[*]}
