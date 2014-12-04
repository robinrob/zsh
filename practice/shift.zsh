#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "shift doesn't just operate on the positional parameters. That is just the
default behaviour if given no parameters. shift takes the name of an array as a
parameter:"

logb 'set -A arr one two three four five
print $arr
shift arr
print $arr'


log


cyan "If the first parameter to shift is an integer, the parameter is taken as
the number of places to shift the array by:"

logb 'set -A arr one two three four five
print $arr
shift 2 arr
print $arr'


log


cyan "Shifting by a specified number of places on the array of positional
parameters (no array name given):"

logb 'function fn {
  print $argv

  shift 2

  print $argv
}
fn 1 2 3 4 5'
