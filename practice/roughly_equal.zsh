#!/usr/bin/env zsh

# Pattern matching in equality tests


if [[ 'robin buko smith' == 'robin '*' smith' ]]
then
  echo "Roughly equal!"
else
  echo "Not even roughly equal."
fi


function at_least {
  if [[ $1 == <99-> ]]
  then
    echo "$1 is at least $2!"
  else
    echo "$1 is not at least $2."
  fi
}


at_least 100 99

at_least 98 99

