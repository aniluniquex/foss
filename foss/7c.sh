#!/bin/bash

echo "Enter the directory name"
read dir

if [ -d $dir ]; then
  cd $dir
  ls > f
  exec < f

  while read line
  do 
    if [ -f $line ]; then
      if [ -r $line -a -w $line -a -x $line ]; then
        echo "$line has all permissions"
      else
        echo "$line does not have all permissions"
      fi
    fi
  done
fi
