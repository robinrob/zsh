#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "You can prevent aliases from being expanded by surrounding with quotes:"

alias hello="echo hello"
hello
"hello"


cyan "Aliases whose definitions end in a space force the next word along to be
looked up as a possible alias too:"

log 'alias echo="echo "
alias person="robin smith"
echo person'
