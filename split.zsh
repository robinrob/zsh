#!/usr/bin/env zsh

csv='a\nb\nc\nd'
words=( ${(s:\n:)csv} )

echo "slashes"
for i in $words
do
	echo next
	echo $i
done
echo

echo "words"
csv='arobinbrobincrobind'
words=( ${(s:robin:)csv} )

for i in $words
do
	echo next
	echo $i
done
echo

echo "grep"
csv=`grep -r type .`

words=("${(f)csv}")
for i in $words
do
	echo next
	echo $i
done