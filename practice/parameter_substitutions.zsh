#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Splitting an input string into an array with @ is extended to other
parameters like this:"

log 'array=(one two three)
print -l "${array[@]}"
print
print -l "${(@)array}"'

magenta "The first works on an array, the second on any value."


log


cyan "f flag splits a string into an array usin"
