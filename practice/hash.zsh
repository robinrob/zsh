#!/usr/bin/env zsh

typeset -A hash

hash[robin]="smith"
hash[alma]="lorenzo"

print "robin => ${hash[robin]}"
print "alma => ${hash[alma]}"
