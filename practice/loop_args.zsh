#!/usr/bin/env zsh


args="one two three"
for arg in ${=args}
do
	print "arg: $arg"
done

print


set one two three

args=($*)
for arg in $args
do
	print "arg: $arg"
done


print

local +r args=($*)
for arg in $args
do
	print "arg: $arg"
done


print


local +r -a args=($*)
for arg in $args
do
	print "arg: $arg"
done

