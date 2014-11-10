#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "Int:"
log 'typeset -i a; a=1+2; echo $a'

log

cyan "Typeset can't be done in this order:"
log 'a=1+2; typeset -i a; echo $a'

log

cyan "Array:"
log 'typeset -a a; a="(1 2 3)"; echo $a[2]'

log

cyan "Hash (associative array):"
log 'typeset -A a; a[robin]=smith; echo $a[robin]'

log

cyan "Set (array with unique values):"
log 'typeset -U a; a=(1 2 3); a=($a 3 4 5 6); echo $a'

log

cyan "Tied array and string:"
log 'typeset -T A a; a=(1 2 3); echo $A'
log 'typeset -T A a; A="1:2:3"; echo $a'

log

maganda "Above examples show how typeset can be used to 'type' a variable."

log

cyan "Below examples show the main use of typeset to scope variables to what is called
'dynamic scope':"

log

cyan "That"

log

log 'var="Original value"

subfn() { print "subfn: $var"; }

fn() { 
  print "fn - before typeset: $var"
  typeset var="Typeset value"
  print "fn: $var"
  subfn
}

fn
print "main: $var"'
