#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "From man zshmisc"
echo

cyan "Appends ''-' to the argv string - it doesn't:"

lognl "- echo wanker"


echo


cyan "Following command is a builtin command - fails if command is not builtin:"

lognl "builtin echo robin"

lognl "builtin e robin"


echo


cyan "Following command is an external command - not shell function or builtin:"

lognl "command ./hello.zsh"

lognl "command echo wanker"

lognl "command print wanker"

maganda "Normally, shell functions take precedence over builtins which take precedence over external commands."


echo


cyan "noglob and nocorrect are the remaining ones - doesn't make sense to use them in a script"
