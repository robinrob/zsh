#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "From man zshmisc"

maganda "Appends ''-' to the argv string - it doesn't:"
lognl "- echo wanker"

maganda "Following command is a builtin command - fails if command is not builtin:"
lognl "builtin echo robin"

lognl "builtin e robin"

maganda "Following command is an external command - not shell function or builtin:"
lognl "command ./hello.zsh"

lognl "command echo wanker"

lognl "command print wanker"


maganda "noglob and nocorrect are the remaining ones - doesn't make sense to use them in a script"
