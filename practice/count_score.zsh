#!/usr/bin/env zsh


local total=0

for num in $(cat score.txt)
do
  total=$(( total + num ))
done

print $total
