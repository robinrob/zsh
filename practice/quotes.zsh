#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Backquotes:"

log 'print \T\h\i\s\ \i\s\ \*\p\o\i\n\t\l\e\s\s\*\ \-\ \b\u\t\ \v\a\l\i\d\!'


log


cyan "ZSH has an easier way of making sure everything is quoted with a backslash
when that's needed. It's a special form of parameter substitution -just one of
many tricks you can do by supplying flags in parentheses"

log "string='This is a *string* with various \`special\` characters'
print -r -- \${(q)string}"

maganda "The read builtin didn't do anything to what you typed, so \$string
contains just those characters. The -r flag to print told it to print out what
came after it in raw fashion, and here's the special part: \${(q)string} tells
the shell to output the parameter with backslashes where needed to prevent
special characters being interpreted. All parameter flags are specific to zsh;
no other shell has them."


log


cyan "The Q flag strips the outer layer of quotes from a parameter:"

log 'read var"?Enter something with quotes: "
print $var
print -r $var
print ${(Q)var}'

maganda "This is useful if you want to read in code from another file!"


log


cyan "The z flag parses a string into an array:"

log 'string="hello robin smith"
string=${(z)string}
print $string[2]'


log


