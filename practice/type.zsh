#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Use the (t) operator in variable expansion to see the type of a variable."
log 'typeset -A a
print ${(t)a}'

log

log 'typeset -Ag a
print ${(t)a}'

log

log 'typeset -i a
print ${(t)a}'

log

log 'typeset a
print ${(t)a}'
