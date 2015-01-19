#!/usr/bin/env zsh



function give_me_opts {
  print $(getopts)
}

give_me_opts -a toss -b shit -c fuck
