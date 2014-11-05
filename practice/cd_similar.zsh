#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan "Easy way to cd between similarly-named directories:"

lognl "cd 1.2; pwd; cd 2 3; pwd"

maganda "The 2 was replaced by the 3 in the pwd of 1.2, e.g. ...zsh/practice/1.2 changed to ...zsh/practice/1.3.
Then the shell cd'ed to that."
