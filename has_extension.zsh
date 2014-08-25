#!/usr/bin/env zsh

FILENAME=$1

if ! [ "${FILENAME##*\.}" = "$FILENAME" ]
then
	FILENAME=( ${(s:.:)FILENAME} )
fi

echo FILENAME[]