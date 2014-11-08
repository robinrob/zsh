#!/usr/bin/env zsh

source $ZSHLOG_PATH


function print_details {
  str=$1

  PARTS=("${(s/:/)str}")


	KEY=$PARTS[1]
	VALUE=$PARTS[2]

  echo "$(red)$KEY$(default): $(yellow)$VALUE$(default)"
}


print_details "robin:smith"
