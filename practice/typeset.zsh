#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "Int:"
log 'typeset -i a; a=1+2; echo $a'
log 'integer a
(( a = 3 * 2 + 1 ))
echo $a'
maganda '`integer` is another way of saying the same thing as `typeset -i`'

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

cyan "Typeset to scope variables to what is called 'dynamic scope':"

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

log


cyan "Although you can do assignments in a typeset statement, you can't assign to arrays:"

log "typeset var=(Doesn\'t work!)"

maganda "... Because the syntax with the parentheses is special; it only works when the line consists of nothing but assignments."

log

cyan "However, the shell doesn't complain if you try to assign an array to a scalar, or vice versa; it just silently converts the type:"
  
log 'typeset var="scalar value"
var=(array value)
echo $var[1]'

log

cyan "Actually the usual way of setting up an array in a function is:"
  
log 'typeset var
var=(hello Robin)
echo $var[2]'

log

cyan "Typeset mistake:"

log 'typeset var=`echo two words`
echo $var'

maganda "This happens because typeset is just an ordinary command, so the rules for parsing argument lists
for commands apply."

log

cyan "Solution to above:"

log 'typeset var
var=`echo two words`'

maganda "This can tell a scalar assignment, and hence knows not to split words, or quote the backquotes"
