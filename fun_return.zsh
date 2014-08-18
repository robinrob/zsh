#!/usr/bin/env zsh

function return_arg {
	echo $@
}

result=`return_arg $@`
echo $result