#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Annoyingly, -A reads in an array, NOT an associtive array!
Even though typeset uses -A for an associative array."

log '
print "one two three" | read -A a
print $a[3k]
'
