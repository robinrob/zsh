#!/usr/bin/env zsh

source $ZSHLOG_PATH


STR=$1

printf `echo $STR | gsed 's/\([/\$]\)/\\\\\1/g'`

