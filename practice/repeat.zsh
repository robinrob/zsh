#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "\`repeat\` repeats a command a specified number of times:"

log 'repeat 3 print Hip Hip Hooray!'


log


cyan "There is also a long-handed form that lets you perform any
arbitrarily-complex set of commands on each run:"

log 'repeat 3 do
print Hip Hip Hooray!
done'
