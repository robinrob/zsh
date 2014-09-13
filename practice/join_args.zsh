#!/usr/bin/env zsh

function join_args {
	IFS=""
	echo "$*"
}

join_args robin smith hello