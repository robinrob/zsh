#!/usr/bin/env zsh

source $ZSH_HOME/lib/colors.zsh

function code {
  CODE='a='$1'; echo $a'

  echo "$(green $CODE:) $(yellow $(eval $CODE))"
}


yellow "Elements are separated by a space:"
code '(1 2 3)'

code '(Hello Robin)'


yellow "Add array to an array"

code '(1 2); a=($a 3)'

code '(dir1 dir2); a=($a dir3)'
