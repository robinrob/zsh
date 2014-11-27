#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Double parentheses surround a complete arithmetic expression: it behaves
as if it\'s quoted."

logb 'integer i j=12
(( i = 3 * ( j + 4 ) ** 2 ))
print $i
print $j'

maganda "Note that that parameters don't need to have the $ in front, even when
their value is being referenced. Also note that it is not necessary to have
spaces around the '=' operator"


log


cyan "Arithmetic expressions can also be done in square brackets using different
operator symbols:"

log '[[ 1 == 1 ]] && print "equal!"'
log '[[ 2 -gt 1 ]] && print "greater!"'
log '[[ 1 -ge 1 ]] && print "greater than or equal!"'

log


cyan "The value of an arithmetic expression is true if it evalutes to a number
greater than zero, otherwise it is false, when used in a statement like this:"

log '(( 1 )) && print "true!"'
log '(( -1 )) && print "false"'


log


cyan "However, arithmetic expressions can also be evaluated from strings, when the expression is assigned
to a number-type variable:"

logb 'typeset -F a
a="(((1 + 2) * 3) ** 4) / 5)"
print $a'

logb 'typeset -i a
a="(((1 + 2) * 3) ** 4) / 5)"
print $a'


log


cyan "Arithmetic variables are still evaluated without requiring \$-expansion when evaluated from strings:"

logb 'scalar=9
typeset -F a
a="scalar"
print $a
'


log


cyan "A feature of string-evaluation is that the result of a block of arithmetic expresions
can be passed to a variable. The value assigned to the variable is the value
of the last-evaluated expression within the block:"

log 'typeset -i a
a="i = 12, j = 2 * 3"
print $a'


log


cyan "Integers are initialized to 0 and floats are initialised to 0.0:"

logb 'typeset -i a
print $a
typeset -F a
print $a'


log


cyan "Another base for printing out the integer can be specified in the typeset statement:"

log 'typeset -i 16 a
a=31
print $a'


log


cyan "More generally, the # operator can be used to base-set an integer when evaluating an expression:"

log 'typeset -i a
(( a = 16#ff * 2#10 ))
print $a'

maganda 'Note that if you want the result printed in base 10 after this expression, this should be
specified explicitly in the typeset statement.'


log


cyan "The # operator can be used like this to form arithmetic expressions combining numbers in
different bases:"
log 'typeset -i 10 a
(( a = 16#ff * 2#10 ))
print $a'


log


cyan "Multiple expressions can be evaluted within a \`(( ))\` block - separated by commas:"

logb 'typeset -F a
typeset -i b
(( a = 1 * 2, b = 10.0 / 3 ))
print $a
print $b'


log


cyan "\`let\` can also be used to evaluate expressions:"

log 'let "a = 2 * 3"
print $a'

maganda "This is convenient because an expression can be passed into a function as a string."
