#!/usr/bin/env zsh

function hidden_dir_exists() {
	result=`find . -depth 1 -name $1`
	if [ -n "$result" ]
	then
	  return "1"
	else
	  return "0"
	fi
}

result=`hidden_dir_exists .git`
echo $result

if [ "$result" ]
then
	echo "EXISTS!"
else
	echo "Does not exist."
fi