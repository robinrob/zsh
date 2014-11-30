#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "\'select\' prints a menu that you must choose an item from."
log 'select var in earth air fire water; do
  print You selected $var
done'
