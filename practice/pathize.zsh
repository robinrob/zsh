#!/usr/bin/env zsh

source $ZSHLOG_PATH


VAL=$1

maganda "Turns string into a path by replacing punctuation with _ and capitalising all letters"


echo $VAL:u | sed 's/[^a-zA-Z]/_/g'


