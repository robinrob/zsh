#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Enable enables a builtin command:"

log "disable disable; enable disable; disable"

maganda "Disable is also a builtin command.
Enable or disable with no arguments just list the enabled/disabled builtins."


log


cyan "Disable disables a builtin command:"

log "disable enable; disable; builtin enable enable; disable"

maganda "Apparently this used to work as a method to re-enable enable, but doesn't now!
There is no method to do it."


log


cyan "Enable/disable can also be used with aliases with -a and functions with -f:"

log "function a = { echo wanker; }; a; disable -f a; a;"

eval "alias a='echo hello'; a"

eval "alias a='echo wanker'"; log "alias a='echo wanker'; a; disable -a a; unalias a; a"

maganda "For some reason i can't create an alias inside an eval string!
Probably it's to do with security."

