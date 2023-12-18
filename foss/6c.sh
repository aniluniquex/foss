#!/bin/bash
for i in $(seq 0 4)
do
  for j in $(seq $i -1 0)
  do
    echo -n $j
  done
  echo
done
