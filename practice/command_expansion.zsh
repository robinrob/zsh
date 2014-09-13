#!/usr/bin/env zsh

# Two ways to expand commands:
print "The full path to zsh is: $(which zsh)"

print "The full path to zsh is: `which zsh`"

BIN=ruby

print "The full path to $BIN is: $(which $BIN)"

print "The full path to $BIN is: `which $BIN`"