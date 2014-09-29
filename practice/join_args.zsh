#!/usr/bin/env zsh

function join_args {
	IFS=" "
	echo "$@"
}

function join_args2 {
	IFS=" "
	shift;
	args="arg: $1"
	shift;
	for arg in "$@"
	do
		args=$args", arg: "$arg
	done
	echo $args
}

join_args $@

join_args2 $@