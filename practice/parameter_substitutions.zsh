#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Splitting an input string into an array with @ is extended to other
parameters like this:"

log 'array=(one two three)
print -l "${array[@]}"
print
print -l "${(@)array}"'

maganda "The first works on an array, the second on any value."
