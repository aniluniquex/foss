#!/bin/bash

echo "Enter the number: "
read n
echo "Enter numbers in the array: "
for ((i=0; i<n; i++))
do
    read arr[$i]
done

# Logic for selection sort
for ((i=0; i<n-1; i++))
do
    small=${arr[$i]}
    index=$i
    for ((j=i+1; j<n; j++))
    do
        if ((arr[j] < small))
        then
            small=${arr[$j]}
            index=$j
        fi
    done
    temp=${arr[$i]}
    arr[$i]=${arr[$index]}
    arr[$index]=$temp
done

# Printing sorted array
echo "Printing sorted array: "
for ((i=0; i<n; i++))
do
    echo ${arr[$i]}
done
