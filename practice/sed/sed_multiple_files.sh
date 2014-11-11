#!/usr/bin/env zsh

source $ZSHLOG_PATH


function setup {
  rm -f file1.txt file2.txt
  echo "Hello" > file1.txt
  echo "Hello" > file2.txt
  green $(cat file1.txt)
  green $(cat file2.txt)
}

function after {
  yellow $(cat file1.txt)
  yellow $(cat file1.txt)
}


cyan "Single command:"
setup

gsed -i 's/Hello/World!/g' *.txt  

after


log


cyan "Loop method:"
setup

files=$(find . -regex '.*/file[0-9].txt' | xargs)
files=(${(s/ /)files})``

for i in $files
do
  gsed -i 's/Hello/World!/g' $i
done

after

