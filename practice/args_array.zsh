#!/usr/bin/env zsh

source $ZSHLOG_PATH

function fuck {
  for arg in $*
  do
    print $arg
  done
}

words=(you wanker prick tosser)
fuck $words
