#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Until loop:"

log 'i=0
until (( i++ == 3 )); do
  if (( i & 1 )); then
    print $i is odd
  else
    print $i is even
  fi
done'

