#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "While loop:"

log 'i=0
while (( i++ < 3 )); do
  if (( i & 1 )); then
    print $i is odd
  else
    print $i is even
  fi
done'
