#!/usr/bin/env zsh

source colors.zsh


green "method 1"
string='arobinbrobincrobind'
words=(${(s:robin:)string})
# This doesn't work when put into a function!
for word in $words
do
	echo $word
done
echo


green "method 2"
string=`grep -r type .`
words=("${(f)string}")
for word in $words
do
	echo $word
done
echo


# This method can be parametized using arguments
# green "method 3"
# string='arobinbrobincrobind'
# separator="robin"
# eval 'words=(${(s:${separator}:)string})'
# for word in $words
# do
# 	echo $word
# done
# echo