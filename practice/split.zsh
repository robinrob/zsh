#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Split a word:"

log 'a='robin:smith'; w=("${(s/:/)a}"); echo $w'
