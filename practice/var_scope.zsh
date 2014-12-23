#!/usr/bin/env zsh

source $ZSHLOG_PATH


typeset -A wanker

wanker[tosser]=wanker

function bastard {
  print "wanker: $wanker[tosser]"
}

bastard
