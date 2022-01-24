#!/bin/bash

P=16;
N=4;

for (( i=1; i<=P; i++)); do
  echo "Processors: " $i 
  for (( j=1; j<=N; j++)); do
    ./sum 1000000000 $i
  done
done
