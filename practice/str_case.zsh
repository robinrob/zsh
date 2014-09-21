#!/usr/bin/env zsh

function upper {
	TEXT="$@"
	echo $TEXT:u
}

function lower {
	TEXT="$@"
	echo $TEXT:l
}


upper "Robin!"

lower "BUKOOO!"