#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Set can actually set the positional parameters that are usually accessed
in functions!"

logb 'set a whole load of words
print $1
print $@
print $*'


log


cyan "Set can be used to set an array quickly from a string!"

logb 'set -A arr a whole load of words
print $arr[1]
print $arr[-1]'

maganda "This can obviously be parameterized!"
