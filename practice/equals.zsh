#!/usr/bin/env zsh

source colors.zsh

function equals {
	if [[ "$1" == "$2" ]]
	then
		green "$1 == $2"
	else
		red "$1 != $2"
	fi	
}

equals "Robin" "Robin"
equals "Robin" "Smith"
equals true true
equals true false
equals 1 1
equals 1 0