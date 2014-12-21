#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Demonstration of nested commands:"
log 'print `eval "print \`print $(print ok\!)\`"`'

log

cyan "Print without a newline (can't see the effect here)"
log 'print -n don''t you dare print a newline after the prompt:'
