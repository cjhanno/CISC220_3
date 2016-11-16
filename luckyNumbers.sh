#!/bin/bash

for (( n=1000; n<=10000; n++)); do
  length="${#n}"
  j=0
  for ((i=0; i<length; i++)); do
    k="${n:i:1}"
    j=$(($j + $k))
    
    if (($1 + 1 == $length)); then
      if (($j==7)); then
      echo $n " is a special number"
      
      elif (($j < 15)); then
      break 
      
      else 
      lenght2="${#j}"
      x=0
      for ((y=0; y<length2; y++)); do
        z="${j:y:1}"
        x=${{$x + $z}}
        if (($y + 1 == $length2)); then
          if(($x == 7)); then
            echo $n " is a special number!"
          fi
        fi
       done
       fi
     fi
   done
done
      
