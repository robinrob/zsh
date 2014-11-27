#!/usr/bin/env zsh

# `numf`` displays the N num-modified files matching the specified search-term.


while getopts :s:n: name
do
	case $name in
		s) SEARCH="$OPTARG" ;;
		n) NUM="$OPTARG" ;;
		*) usage ;;                # display usage and exit
	esac
done
	

awk_part = "awk '{ s = \"\"; for (i = 9; i <= NF; i++) s = s $i \" \" ; print s }'"

dir_part=("${(s/'/'/)SEARCH}")[0, -2]

puts dir_part
command = "ls -lt | tail +2 | #{awk_part} | grep #{options.search_term} | head -#{options.num}"

