#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Override noclobber option:"

log 'setopt noclobber
print important stuff > file.txt
cat file.txt
print less important stuff > file.txt
cat file.txt
print less important stuff >| file.txt
cat file.txt
rm file.txt'
