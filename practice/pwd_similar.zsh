#!/usr/bin/env zsh

source $ZSHLOG_PATH
source $FUNCS_PATH


cyan "The 'similar directory' trick can be used with parameter expansion like this:"

log 'rm -f 1.3/file.txt; ls 1.3/; cd 1.2; cp file.txt ${PWD/2/3}/file.txt; lsa ../1.3/file.txt'
