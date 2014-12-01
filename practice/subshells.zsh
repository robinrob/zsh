#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Commands can be run in a sub-shell by using a ()-pair:"

log '(cd ~; ls)'

maganda "This sub-shell inherits all settings from the parent shell."


log


cyan "There is a current-shell construct which means 'run commands
in the current shell' - this is the default construct:"

log '{cd ~; ls}'


log


cyan "Here's an interesting use of current-shell construct:"

log 'test=true
[[ $test = true ]] && {
  print Hello.
  print Well, this is exciting.
}'


log


yellow "In case you're confused about what happens in the current shell and what happens in a subshell, here's a summary.

The following are run in the current shell.

-- All shell builtins and anything which looks like one, such as a precommand modifier and tests with \`[[\`.
-- All complex statements and loops such as if and while. Tests and code inside the block must both be considered separately.
-- All shell functions.
-- All files run by \`source\` or \`.\` as well as startup files.
-- The code inside a \`{...}\`.
-- The right hand side of a pipeline: this is guaranteed in zsh, but don't rely on it for other shells.
-- All forms of substitution except `...`, \$(...), =(...), <(...) and >(...).
-- The following are run in a subshell.

-- All external commands.
-- Anything on the left of a pipe, i.e. all sections of a pipeline but the last.
-- The code inside a \`(...)\`.
-- Substitutions involving execution of code, i.e. \`...\`, \$(...), =(...), <(...) and >(...). (TCL fans note that this is different from the \`[...]\` command substitution in that language.)
-- Anything started in the background with \`&\` at the end.
-- Anything which has ever been suspended. This is a little subtle: suppose you execute a set of commands in the current shell and suspend it with ^Z. Since the shell needs to return you to the prompt, it forks a subshell to remember the commands it was executing when you interrupted it. If you use fg or bg to restart, the commands will stay in the subshell. This is a special feature of zsh; most shells won't let you interrupt anything in the current shell like that, though you can still abort it with ^C."
