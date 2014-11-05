#!/usr/bin/env zsh

source $ZSHLOG_PATH


maganda "Retrieve a hash value using its value rather than by key!
This can be used to check existence of a value in a hash."
log "typeset -A hash; hash[robin]=smith; echo \$hash[(r)smith]"


