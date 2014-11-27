#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "noglob is used to turn off file globbing in the following command:"

log 'print *'

log

log 'noglob print *'

maganda "This saves the need to quote everything which can be annoying."
