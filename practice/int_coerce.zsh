#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Strings are cooerced into numbers inside arithmetic parentheses:"

log 'one="1"
two="2"

print $(( one + two ))'
