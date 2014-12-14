#!/usr/bin/env zsh

source $ZSHLOG_PATH


IFS=''
pcregrep -M -N CR -o 'function [_a-zA-Z]+ {[^{}]+}' $FUNCS_PATH | while read line ; do
    block="${block}${line}
"
    if [[ -n $(print $line | pcregrep 'function [_a-zA-Z]+') ]]
    then
      name=$(print $line | pcregrep -o1 'function ([_a-zA-Z]+)')
    fi

    if [[ -n $(print $line | pcregrep '}$') ]]
    then
      green "Function: $name"
      yellow $block
      block=""
    fi
done
