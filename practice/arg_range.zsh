#!/usr/bin/env zsh

source $ZSHLOG_PATH


local +r ArgRange="$*[1, -2]"


print $ArgRange
