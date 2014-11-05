#!/usr/bin/env zsh

source $COLORS_PATH

PS1="$(magandaprompt)%n$(brightwhiteprompt)@%{$hostcolor%}%B%M%b%f $(brightyellowprompt)\$(dir)/$(defaultprompt) \${vcs_info_msg_0_}$(brightwhiteprompt)$(brightredprompt)$LIGHTNING$(defaultprompt)  "

# Use this to test the prompt line:
print -P $PS1
