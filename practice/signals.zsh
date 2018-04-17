#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Signals are the way to communicate to another process."

log 'print $signals'


log


cyan "The \`kill'\` command is actually a tool for sending signals to processes:"

log 'kill -KILL 1234 2> /dev/null
kill -SIGTERM 4567 2> /dev/null'

magenta "The strongest signal is -KILL, but -SIGTERM is the default. They are
also numbered in the order they appear in: $signals"
