#!/usr/bin/env zsh

args="one two three"

for arg in $args
do
	echo "arg: $arg"
done

args=${=args}
echo "args: $args"

for arg in $args
do
	echo "arg: $arg"
done