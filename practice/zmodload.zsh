#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan 'zmodload is used to load ZSH add-on packages, such as zsh/mathfunc:'

log 'zmodload zsh/mathfunc
(( pi = 4.0 * atan(1.0) ))
print $pi'

magenta "This actually links in the system mathematical library."
