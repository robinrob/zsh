#!/usr/bin/env zsh

source $ZSHLOG_PATH


#!/usr/bin/env zsh

source $ZSHLOG_PATH


a=(1 2 3)

for i in $a
do
  if [[ $i == 3 ]]
  then
    break
  fi
  
  echo $i
done


