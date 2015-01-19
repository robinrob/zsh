#!/usr/bin/env zsh

source $ZSHLOG_PATH

function takesarr {
  arr=($*)
  for item in $arr
  do
    print $item
  done
}

arr=(one two three)

takesarr $arr
