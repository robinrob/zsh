#!/usr/bin/env zsh


function get_arr {
  return (1 2 3)
}


a=$(get_arr)

echo $a
echo $a[1]

