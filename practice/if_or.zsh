#!/usr/bin/env zsh

a=2

if [[ $a == 1 || $a == 3 || $a > 0 ]]
then
  print yes
fi
