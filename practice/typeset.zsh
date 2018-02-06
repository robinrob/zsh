#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Scalar - this is the default variable type."
log 'typeset a=one
print $a'
magenta "It is not actually named 'string' type."

log


cyan "Int:"
log 'typeset -i a; a=1+2; echo $a'
log 'integer a
(( a = 3 * 2 + 1 ))
echo $a'
magenta '`integer` is another way of saying the same thing as `typeset -i`'

log

cyan "Float:"
log 'typeset -F a
(( a=1/2 ))
print $a
(( a=1/2.0 ))
print $a
(( a=1.0/2 ))
print $a'

log

cyan "Scientific:"
log 'typeset -E a
(( a=1/2 ))
print $a
(( a=1/2.0 ))
print $a
(( a=1.0/2 ))
print $a'

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

cyan "Typeset can't be done in this order:"
log 'a=1+2; typeset -i a; echo $a'

log


magenta "Above examples show how typeset can be used to 'type' a variable."

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


cyan "Although you can do assignments in a typeset statement, you can't assign
to arrays:"

log "typeset var=(Doesn\'t work!)"

magenta "... Because the syntax with the parentheses is special; it only works
when the line consists of nothing but assignments."

log

cyan "However, the shell doesn't complain if you try to assign an array to a
scalar, or vice versa; it just silently converts the type:"
  
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
log
log 'typeset var=$(echo two words)
echo $var'

magenta "This happens because typeset is just an ordinary command, so the rules
for parsing argument lists for commands apply."

log

cyan "Solution to above:"

log 'typeset var
var=`echo two words`
echo $var'
log
log 'typeset var
var=$(echo two words)
echo $var'

magenta "This can tell a scalar assignment, and hence knows not to split words,
or quote the backquotes"

log

cyan "A variable created inside of an arithmetic expression can be made global -
and therefore referenceable from outside the expression - by using typset -g:"

log 'function fn {
  typeset -Fg a
  (( a = 1.234 ))
}

fn
print "main: a: $a"'

log

cyan "This gives an error:"
log 'fn() {
  typeset -Fg f
}

outerfn() {
  typeset f="scalar value"
  fn
  print $f
}

outerfn'

magenta "The error message comes because it tried to preserve the value of $f
while changing its type, and the value wasn't a proper floating point expression
 - assigning to numeric parameters
always does an arithmetic evaluation"


log


cyan "ZSH will force a string variable to the right value when used in an
arithmetic expresion. It will also convert a number value to a string when
assigned to a string variable:"

log 'typeset a=1
(( a = a + 2.14 ))
print $a'

magenta "This means that you can have a variable that is sometimes a string, and
sometimes a number!"


log


cyan "Typeset-ing a variable twice has no effect:"

logb 'typeset a="robin"
print $a
typeset a
print $a'


log


cyan "The +r flag can be used to re-set a variable:"

logb 'typeset a="robin"
print $a
typeset +r a
print $a'
