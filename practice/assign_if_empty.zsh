#!/usr/bin/env zsh

source $ZSHLOG_PATH

cyan ": is apparently a synonym for \`true\`. The following two lines are actually equivalent."

lognl ": \${param:=wanker}; echo \$param; : \${param:=bollocks}; echo \$param"
lognl "true \${param`true`=wanker}; echo \$param; true \${param`true`=bollocks}; echo \$param"

maganda "In the parameter expansion, \$param is given the value value if it was empty before, and left alone otherwise. Since that was the only reason for the parameter expansion, you use : to ignore the argument. Actually, the shell blithely builds the command line --- the colon, followed by whatever the value of \$param is, whether or not the assignment happened --- then executes the command; it just so happens that `:` takes no notice of the arguments it was given. If you're switching from ksh, you may expect certain synonyms like this to be aliases, rather than builtins themselves, but in zsh they are actually builtins; there are no aliases predefined by the shell."
