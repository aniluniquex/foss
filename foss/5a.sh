#!/bin/bash

echo "Enter the string"
read s

# Reverse the string
rvs=$(echo $s | rev)

if [ "$s" = "$rvs" ]; then
  echo "It is a palindrome"
else
  echo "It is not a palindrome"
fi
