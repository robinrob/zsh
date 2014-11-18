#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "This method of creating a variable inside a function automatically creates a
global variable, whose value is 'remembered' on subsequent function calls.
This is really annoying!"

logb 'function memory {
  if [[ -n $1 ]]
  then
    a=$1
  fi

  printf "%-10s a: %s\n" function: $a
}


memory 1
memory
printf "%-10s a: %s\n" main: $a'

log


cyan "In this function definition, the variable a is correctly scoped to the function."

logb 'function memory {
  if [[ -n $1 ]]
  then
    typeset a=$1
  fi

  printf "%-10s a: %s\n" function: $a
}

memory 1
memory
printf "%-10s a: %s\n" main: $a'


log


cyan "A variable can be explicitly declared as global by using the -g option to typset:"

logb 'function memory {
  if [[ -n $1 ]]
  then
    typeset -g a=$1
  fi

  printf "%-10s a: %s\n" function: $a
}

memory 1
memory
printf "%-10s a: %s\n" main: $a'


