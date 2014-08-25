#!/usr/bin/env zsh

# Arithmetic expressions can be expanded:
print "2 + 5 = $((2 + 5))"

expression="1 + 2"

# Or even parametise the expression
print "$expression = $(($expression))"