#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "For-loop shorthand:"


log 'for i in {1..3}; print $i'


log


cyan "The syntax after the 'in' matches file patterns. To do something for every
file in a directory:"

log 'for f in sed/*; print $f'

