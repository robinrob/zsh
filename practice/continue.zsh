#!/usr/bin/env zsh

source $ZSHLOG_PATH


a=(1 2 3)

for i in $a
do
  if [[ $i == 2 ]]
  then
    continue
  fi
  
  echo $i
done

