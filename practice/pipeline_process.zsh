#!/usr/bin/env zsh

source $ZSHLOG_PATH



cyan "Within a pipeline, a new process is started for each portion of it up to the last (right-most) portion,
which is run in the current shell:"

lognl "cd ../../ && pwd | echo done"

magenta "This is not actually an obvious point - other shells run the first (left-most) portion
in the current shell."

echo

cyan "Reverse of above to show \`cd\` command running in current shell:"
lognl "echo done | cd ../../ && pwd" 
