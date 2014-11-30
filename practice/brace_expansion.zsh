#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Perform command twice:"

log 'print {Hello,Goodbye}\ World'

log 'ls {arithmetic,array,brace}_expansion.zsh'


log


cyan "A range:"

log 'print {1..3}'

log 'touch log_00{1,2,3}.txt
ls log_00{1..3}.txt | grep "log.*.txt"
rm log_00{1..3}.txt'


log


cyan "Nested braces:"

log 'print {now,th{en,ere{,abouts}}}'
