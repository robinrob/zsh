#!/usr/bin/env zsh

# Example: ./exec_args.zsh git status
# NOT ./exec_args.zsh "git status"

$@

function doit {
	cmd=$@
	$@
}

# ls /usr/bin/git
doit $@
