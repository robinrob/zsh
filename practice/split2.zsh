#!/usr/bin/env zsh

STRING=$1
SEPARATOR=$2
result=eval '( ${(s:'${SEPARATOR}':)'$STRING'} )'
echo $result
# words=(  )
# echo $words