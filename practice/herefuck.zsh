#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "A here-fuckument can be made like this:"

log 'print "Here is a here-document" | sed -e "s/doc/fuck/" <<HERE'

magenta "That's only really useful on the commandline, when you want to write
more than one line of text into a file. Input is read on the command-line until
the end-delimiter - in this case HERE - is found."


log


cyan "ZSH has here-strings:"

log 'sed -e "s/doc/wank/" <<< "This string is the entire document."'
