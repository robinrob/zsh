#!/usr/bin/env zsh

source $ZSHLOG_PATH


magenta "The (r) construct means 'reverse-map' - i.e. find an element by its value, not its index!"
log "arr=(1 2 3); a=$arr[(r)2]; echo $a"

