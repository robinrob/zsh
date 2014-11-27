#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Standard string equality:"

log '[[ robin = robin ]] && print "equal!"'


log


cyan "Pattern-matching equality:"

log '[[ robin = r* ]] && print "equal!"'

