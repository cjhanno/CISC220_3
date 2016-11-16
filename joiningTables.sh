#!/bin/bash

file1=$1
file2=$2

join -j 2 -o 1.1,1.2,1.3,2.3 <(sort -k2 file1) <(sort -k2 file2) 
