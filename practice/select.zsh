#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "This is how to use select statement:"

select var in robin smith
do
  case $var in
    robin) echo 'Robin!' ;;
    smith) echo 'Smith' ;;
  esac
done
