#!/usr/bin/env zsh

source $ZSHLOG_PATH


array=(two words)
if [[ $array == 'two words' ]]; then
  print "The array \$array is OK.  O, joy."
fi
