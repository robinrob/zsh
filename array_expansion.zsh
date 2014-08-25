#!/usr/bin/env zsh

# ^ operator expands arrays
a=(1 2 3)
b=(4 5 6)

echo $^a-$^b