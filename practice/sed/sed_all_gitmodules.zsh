#!/usr/bin/env zsh

[[ $fpath = *dotfiles-base* ]] || fpath=($FUNCS_HOME $fpath)
# -U prevents alias expansion during function definition.
# +X loads the file immediately - rather than only when it is needed. This
# allows the function's contents to be seen by running e.g. `which bastard`.
autoload -U +X $fpath[1]/*(:t) 2> /dev/null

sed_all 's/smith/robin/g' '.gitmodules'
