#!/usr/bin/env zsh

source $ZSH_HOME/lib/colors.zsh

yellow "Elements are separated by a space:"
arr=(1 2 3)
echo $arr

arr=("Hello" "Robin")
echo $arr


yellow "2D array:"
arr=((1 2) (3 4))

for el in $arr
do
  echo $el
done
