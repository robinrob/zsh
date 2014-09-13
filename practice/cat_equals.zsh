#!/usr/bin/env zsh

val=`cat file.txt`

echo "val: $val"

if [[ val -eq 1 ]]
then
	echo "equal!"
else
	echo "not equal!"
fi