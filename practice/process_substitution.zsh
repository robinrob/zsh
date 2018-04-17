#!/usr/bin/env zsh

source $ZSHLOG_PATH

log 'cat < <(echo This is output)'

magenta "What happens is that the command \`echo This is output\' is run, with
the obvious result. That output is not put straight into the command line, as it
would be with command substitution, to be described shortly. Instead, the
command line is given a filename which, when read, gets that output."

log

cyan "So it's more like:"

log 'echo This is output > tmpfile
cat < tmpfile
rm tmpfile'

magenta "Therefore if you want to redirect input from the process substitution
you need an extra <, over and above the one in the substitution syntax."


log


log 'echo This is output > >(sed "s/output/rubbish/" >outfile)

cat outfile'


cyan "This works like:"


log 'echo This is output >tmpfile
sed "s/output/rubbish/" <tmpfile >outfile

cat outfile'


log


cyan "There's an obvious relationship to pipes here, and in fact this example
could be better written:"

log 'echo This is output | sed "s/output/rubbish/" >outfile

cat outfile'


log


cyan "A good example of an occasion where the output process substitution can't
be replaced by a pipe is when it's on the error output, and standard output is
being piped:"
  
yellow './myscript 2> >(grep -v idiot >error.log) | process-output >output.log'

magenta "A little abstract, but here the main point of the script `myscript` is
to produce some output which undergoes further processing on the right-hand side
of the pipe. However, we want to process the error output here, by filtering out
occurrences of lines which use the word `idiot`, before dumping those errors
into a file error.log."


log


cyan "You can diff the output of two processes!:"

log 'diff =(./myscript1.zsh) =(./myscript2.zsh)'

log

cyan "Quick way to get file's contents onto the command line:"

log 'echo $(<myscript1.zsh)'

magenta "This is more efficient than using the \`cat\` method."

