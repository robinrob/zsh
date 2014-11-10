#!/usr/bin/env zsh

source $ZSHLOG_PATH


# Ok this one doesn't work because of reason given in following stack-overflow question:
# http://stackoverflow.com/questions/26789277/options-do-not-work-inside-zsh-script
# setopt autocd;

cyan "RC quotes means that double-quoting can be used to escape quotes."

function wanker {
  setopt rcquotes
  log "setopt rcquotes; echo a wanker''''s wanker "
}

wanker

log "echo a wanker''''s wanker "

