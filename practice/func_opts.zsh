#!/usr/bin/env zsh

source $ZSHLOG_PATH


function takes_args {
  while getopts :w:b: name
  do
    case $name in
      b) BOOL="yes" ;;
      w) MSG=$OPTARG ;;
      *) usage ;;
    esac
  done

  if [[ -z $BOOL ]]
  then
    shift;
  fi

  if [[ -z $MSG ]]
  then
    shift; shift
  fi

  echo $@ ${MSG}!!!
}



takes_args -b -w wanker fuck you
