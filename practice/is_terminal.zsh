#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "The -t test can be used to check whether standard output is a terminal:"

log '[[ -t 1 ]] && print not a terminal!'

[[ -t 1 ]] && yellow is a terminal!

magenta "This is the way to write interactive stuff in a script only when it is
being run in an interactive shell, but still be able to use the script as part
of an automated process.'
