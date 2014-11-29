#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Split a word using regexp:"

log 'a=robin:smith
w=("${(s/:/)a}")
print $w[1]'


log


cyan "Split a word using fixed string:"

log 'a="robin
smith"
w=( ${(s.
.)a} )
print $w[1]'

maganda "That's how to split a line using newline!"


log


cyan "Special form of split:"

logb 'function args {
  print $# $*
}

set arguments to the shell
unsetopt shwordsplit
args "$*"
args "${=*}"'

