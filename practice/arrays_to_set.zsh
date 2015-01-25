#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Join two arrays into a set:"

logb 'local Result1
local arr1
arr1=(1 2 3)
print $arr1

local arr2
arr2=(3 4 5)
print $arr2

local aset
aset=($arr1 $arr2)

print $aset'
