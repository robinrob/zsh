#!/usr/bin/env zsh

source $ZSHLOG_PATH

maganda "Int:"
lognl 'typeset -i a; a=1+2; echo $a'

maganda "Typeset can't be done in this order:"
lognl 'a=1+2; typeset -i a; echo $a'

maganda "Array:"
lognl 'typeset -a a; a="(1 2 3)"; echo $a[2]'

maganda "Hash (associative array):"
lognl 'typeset -A a; a[robin]=smith; echo $a[robin]'

maganda "Set (array with unique values):"
lognl 'typeset -U a; a=(1 2 3); a=($a 3 4 5 6); echo $a'

maganda "Tied array and string:"
log 'typeset -T A a; a=(1 2 3); echo $A'
lognl 'typeset -T A a; A="1:2:3"; echo $a'
