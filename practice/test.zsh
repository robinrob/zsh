#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "The \`test\` command performs a test:"

log 'test a = a && print true!'

log 'test "a = a" && print true!'

magenta "Usually though, the [[ ]] construct is used instead and contains the
test to be performed."


log


cyan "Test newness or oldness of files:"

log '[[ test.zsh -nt arithmetic.zsh ]] && print "file1 newer than file2!"'

log '! [[ arithmetic.zsh -nt test.zsh ]] && print "file1 not newer than file2!"'

log '[[ arithmetic.zsh -ot test.zsh ]] && print "file1 older than file2!"'


log


cyan "Test equivalence of files (meaning that they refer to the same file - this
can be a symbolic or hard link):"

log '[[ test.zsh -ef test_link.zsh ]] && print "files are equivalent!"'

log '! [[ test.zsh -ef arithmetic.zsh ]] && print "files are not equivalent"'


log


cyan "Test file exists:"

log '[[ -e test.zsh ]] && print "file exists!"'


log

magenta "This also catches directories or symlinks."


cyan "The hyphen-style tests -z and -n actually mean 'zero-length' and 'non-zero
length!"

log '[[ -z "" ]] && print "Zero length!"'
log '[[ -n "Robin" ]] && print "Non-zero length!"'


log


cyan "Arrays in equality test are treated as strings with spaces:"

log 'arr=(one two three)
[[ $arr == "one two three" ]] && print "Equal!"'


log


cyan "Demo of different types of test in one condition:"

log "if [[ 3 -gt 2 && ( me > you || ! -z bah ) ]]; then
print will I, won\'t I...
fi"
