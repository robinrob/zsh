#!/usr/bin/env zsh


function a {
  typeset -f $1
  $1 $2
}

function does {
  typesef -s $1
  echo $1
}

function wanker {
  typeset -i a
  a=1+2
  echo $a
}

wanker
