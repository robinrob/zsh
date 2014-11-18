#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "An associative array can be initialised and used like this:"
logb 'typeset -A a

a[robin]="smith"
a[alma]="lorenzo"

print "robin => ${a[robin]}"
print "alma => ${a[alma]}"'


log


cyan "An alternative method for initialising an associative array:"

logb 'typeset -A a

a=(robin smith alma lorenzo)

print "robin => ${a[robin]}"
print "alma => ${a[alma]}"'  


log


cyan "A key-value pair can be unset:"

log 'typeset -A a

a=(one two three four)

print ${a[two]}'



log 'typeset -A a

a=(one two three four)

print $a[two]

unset 'a[two]'

print $a[one]
print $a[two]'
