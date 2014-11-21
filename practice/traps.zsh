#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Traps capture signals so you can do something."

log 'trap "print I''m trapped!" INT'

maganda "The first argument is a chunk of shell code to execute, which obviously
needs to be quoted when you pass it as an argument, and the remaining arguments
are a list of signals to handle, minus the SIG prefix. So:"


log


cyan "Second method:"

log 'function TRAPINT {
  print "I''m trapped!"
}'
