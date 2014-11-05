#!/usr/bin/env zsh

typeset -A hash

hash[name]=smith
hash[age]=27


for key in ${(k)hash}
do
  echo "$key: $hash[$key]"
done
