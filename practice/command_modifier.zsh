#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "From man zshmisc"

maganda "Appends ''-' to the argv string - it doesn't:"
log "- echo wanker"

maganda "Following command is a builtin command - fails if command is not builtin:"
log "builtin echo robin"

log "builtin e robin"

maganda "Following command is an external command - not shell function or builtin:"
log "command command_modifier.zsh"
