#!/usr/bin/env zsh

source $ZSHLOG_PATH


function takes_hash {
  typeset -A wanker

  wanker=( ${(Pkv)1} )

  green $wanker[tosser]
}

function takes_hash2 {
  print $@
  set -A wanker $@

  print $wanker[tosser]
}


typeset -A thishash

thishash[tosser]=prick

takes_hash thishash
takes_hash2 $(print ${(kv)thishash})
