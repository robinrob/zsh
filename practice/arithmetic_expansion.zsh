#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Arithmetic expressions can be expanded:"

log 'print "2 + 5 = $((2 + 5))"'


log


cyan "Or even parametise the expression"

log 'expression="1 + 2"
print "$expression = $(($expression))"'


log


cyan "The value of an assignment within an arithmetic expression is the value
being assigned:"

log 'print $(( param = 3 + 2))'
