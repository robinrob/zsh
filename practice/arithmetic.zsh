#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Double parentheses surround a complete arithmetic expression: it behaves as if it\'s quoted."

logb 'integer i j=12
(( i = 3 * ( j + 4 ) ** 2 ))
echo $i
echo $j'

maganda "Note that One important point to note is that parameters don't need to have the $ in front,
even when their value is being referenced. Also note that it is not necessary to have spaces around the
'=' operator"

log

cyan "Integers are initialized to 0:"

log 'typeset -i a
echo $a'

log

cyan "Another base for printing out the integer can be specified in the typeset statement:"

log 'typeset -i 16 a
a=31
print $a'

log

cyan "More generally, the # operator can be used to base-set an integer when evaluating an expression:"

log 'typeset -i a
(( a = 16#ff * 2#10 ))
echo $a'

maganda 'Note that if you want the result printed in base 10 after this expression, this should be
specified explicitly in the typeset statement.'

log

log 'typeset -i 10 a
(( a = 16#ff * 2#10 ))
echo $a'

