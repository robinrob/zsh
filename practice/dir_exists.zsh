#!/usr/bin/env zsh

function dir_exists() {
	if [ -d "$1" ]
	then
	  echo "$1 exists mate!"
	else
	  echo "$1 does not exist."
	fi
}

function hidden_dir_exists() {
	result=`find . -depth 1 -name $1`
	if [ -n "$result" ]
	then
	  echo "$1 exists mate!"
	else
	  echo "$1 does not exist."
	fi
}

dir_exists "rake"
dir_exists ".git"
hidden_dir_exists ".git"
hidden_dir_exists ".twat"