#!/usr/bin/env zsh


function last_arg {
  print $*[-1]
}

last_arg a b c d efg
