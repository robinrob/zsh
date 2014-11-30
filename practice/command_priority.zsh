#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "The shell looks up commands in this order:"

yellow '- aliases, which will immediately be interpreted again as texts for
commands, possible even other aliases; they can be deleted with `unalias`,

- reserved words, those special to the shell which often need to be interpreted
differently from ordinary commands due to the syntax, although they can be
disabled if you really need to,

- functions; these can also be disabled, although it'"'"'s usually easier to
`unfunction` them,

- builtin commands, which can be disabled, or called as a builtin by putting
`builtin` in front,

- external commands, which can be called as such, even if the name clashes with
one of the above types, by putting `command` in front'
