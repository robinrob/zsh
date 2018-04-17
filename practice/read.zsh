#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Annoyingly, -A reads in an array, NOT an associtive array!
Even though typeset uses -A for an associative array."

log 'print "one two three" | read -A a
print $a[3]'


log


cyan "A set of parameters can be read in like this:"

logb 'print "one two three" | read a b c
print $a
print $b
print $c'


log


cyan "A prompt can be displayed for the input like this:"

log 'print hello | read line"?Enter some input: "
print $line'

magenta "This is a shortcut to using a print -n statement beforehand."


log


cyan "In above example the whole line can actually be quoted:"

log 'print hello | read "line?Enter some input: "
print $line'

magenta "This will make parameterization easy :)"


log


cyan "Use -q for yY prompt:"

log 'print y | read -q
print $REPLY'

magenta "REPLY only ever contains 'y' or 'n'."


log


cyan "Read single character:"

log 'print a | read -k a
print $a'

