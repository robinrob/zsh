#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "The shell has arguments:"

logb 'function args {
  print $# $*
}

set arguments to the shell

print $*
args $*
args $@

set two words

args "$*"
args "$@"'

maganda "If you quote an array going into a function - it gets parsed as one
argument. However, quoting a string with spaces - like \$@ - gets parsed as
multiple arguments split by a space, as usual."
