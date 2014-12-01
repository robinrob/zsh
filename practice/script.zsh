#!/usr/bin/env zsh

source $ZSHLOG_PATH

function fn {
  print "OPTIND: $OPTIND"
  print "args: $@"
  getopts
  print "OPTIND: $OPTIND"
  print "args: $@"
}

fn 1 2 3 4 5
