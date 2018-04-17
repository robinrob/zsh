#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Enable enables a builtin command:"

log "enable disable"

magenta "Disable is also a builtin command"


log


cyan "Disable disables a builtin command:"

log "disable enable; disable; builtin enable enable; disable"

magenta "Enable or disable with no arguments just list the enabled/disabled builtins."
