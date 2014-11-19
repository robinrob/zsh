#!/usr/bin/env zsh

source $ZSHLOG_PATH


while [[ -n $1 ]]
do
  print "arg: $1"
  shift
done
