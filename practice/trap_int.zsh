#!/usr/bin/env zsh

source $ZSHLOG_PATH

trap 'echo Hi.' EXIT
function fn {
  setopt localtraps
  trap 'echo Bye.' EXIT
}

fn


function fn2 {
  setopt localtraps
  trap 'echo Wank.' EXIT
}

fn2
