#!/usr/bin/env zsh

source $ZSHLOG_PATH


if [[ -n $@ ]]
then
  echo "Yes!"
else
  echo "No."
fi


if [[ -n $* ]]
then
  echo "Yes!"
else
  echo "No."
fi
