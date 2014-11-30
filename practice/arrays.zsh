#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "Array Elements are separated by a space:"

log 'a=(1 2 3)
print $a[2]'


log


cyan "Add array to an array"

log 'a=(1 2)
a=($a 3)
print $a'


log


cyan "Length of an array:"

log 'a=(1 2 3 4 5)
print $#a'
