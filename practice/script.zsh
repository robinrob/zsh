#!/usr/bin/env zsh

source $ZSHLOG_PATH


function args {
  print $# $*
}

set arguments to the shell

print $*
args $*
args $@

log

args "$*"
args "$@"

log

unsetopt shwordsplit
args $*
args "$@"
