#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Standard output is directed to a file, but standard error is directed to
the terminal:"

log '{ print a message
red an error >&2 } > file
cat file
rm file'

magenta "The braces allow you to create a 'black box' out of multiple lines of
commands."


log


cyan "This redirects both at once:"

log '{ print A message
print error >&2 } >file 2>&1
cat file
rm file'

log

log '{ echo A message
echo An error >&2 } >&file
cat file
rm file'

magenta "The second is a ZSH-shorthand for the Bourne-style first."


log


cyan "Redirect standard error through a pipe:"

log '{ echo A message
echo An error >&2 } 2>&1 | sed -e "s/A/I/"'

log

log '{ echo A message
echo An error >&2 } |& sed -e "s/A/I/"'


log


cyan "Redirections can appear anywhere on the command line:"

log '>file echo foo
cat file
rm file'


log


cyan "A file can be opened for both reading and writing:"

log 'echo test >/tmp/redirtest
sed "s/e/Z/g" <>/tmp/redirtest 1>&0
cat /tmp/redirtest'

magenta "This is a general way to achieve the same as using - in this example -
sed -i."
