#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Unset makes a parameter disappear!"

log 'a=wanker
print $a
unset a
print $a'


log


cyan "A strange behaviour of unset though:"

log 'var=bastard

function wanker {
  typeset var=wanker
  print $var
  unset var
  var="change global var value"
}

print $var'

maganda "You might expect that the global var value was changed by the last line
of the function. However the 'ghost' of the variable 'var' lived in within the
function, so the second usage of it was scoped the same as the first usage -
just locally."
