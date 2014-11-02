#!/usr/bin/env zsh

source $ZSHLOG_PATH

maganda "typeset to int"
lognl 'typeset -i a; a=1+2; echo $a'

maganda "typeset can't be done in this order"
lognl 'a=1+2; typeset -i a; echo $a'

maganda "typeset to array"
log 'typeset -a a; a="(1 2 3)"; echo $a[2]'

#maganda "typeset to hash (associative array)"
#log 'typeset -f a; a=(1 2 3); echo $a[2]'

