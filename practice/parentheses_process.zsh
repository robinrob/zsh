#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Wrapping a command in parantheses tells the shell to start a new process for the command."

log2nl "(cd ../../; pwd);pwd"

cyan "A similar effect happens within pipelines: only the last portion of the pipeline is run in the current shell.
The other portions are run in separate processes."

lognl "cd ../../ | pwd"
