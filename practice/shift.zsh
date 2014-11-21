#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Shift doesn't just operate on the positional parameters. That is just the
default behaviour if given no parameters:"

log 'set -A arr one two three
print $arr[1]
shift arr
print $arr[1]'
