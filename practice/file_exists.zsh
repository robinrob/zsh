#!/usr/bin/env zsh

source $ZSHLOG_PATH


logb '
if [ -f file_exists.sh ]
then
	echo "yes!"
else
	echo "no!"
fi
'


log


cyan 'The -f check is case-INsensitive.'

logb '
if ! [ -f file_exists.sh ]
then
	echo "yes!"
else
	echo "no!"
fi
'

log


function file_exists {
  FILENAME=$1
  EXISTS=$(find . -name $FILENAME)

  if [[ $EXISTS != '' ]]
  then
    echo 'yes'
  else
    echo 'no'
  fi
}


file_exists file_exists.zsh
file_exists file_existS.zsh


log


if [[ "$(file_exists file_exists.zsh)" == "yes" ]]
then
  print "does exist"
else
  print "does not exist"
fi
