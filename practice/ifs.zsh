#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "IFS is used by the shell to split words in situations where things are
read in:"

log '
fn() {
 local IFS=:
 print "a:b:c:d" | read -A array
 print -l $array
}
fn'


