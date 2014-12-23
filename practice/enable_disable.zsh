#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Enable enables a builtin command:"

log "enable disable"

maganda "Disable is also a builtin command"


log


cyan "Disable disables a builtin command:"

log "disable enable; disable; builtin enable enable; disable"

maganda "Enable or disable with no arguments just list the enabled/disabled builtins."
