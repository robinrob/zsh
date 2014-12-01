#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Empty arguments:"

log 'function args {
  print $# $@
}

set hello "" there
args "$*"
args "$@"'

maganda "If you want to actually pass an empty argument and refer to the empty
argument within the function, then \"\$@\" should be used"


log


cyan "Same happens with expanded scalars:"

logb 'function args {
  print $# $@
}

empty=
args $empty
args "$empty"'


log


cyan "Here is a table showing all of the possibilities:"

log

yellow '                       |   Number of arguments
                       |     if $* contains...
                       |  (two words)
Expression   Word      |       'one word'
on line   splitting?   |             empty string
--------------------------------------------------
$*             n       |     2     1     0
$@             n       |     2     1     0
"$*"           n       |     1     1     1
"$@"           n       |     2     1     1
                       |                    
$*             y       |     2     2     0
$@             y       |     2     2     0
"$*"           y       |     1     1     1
"$@"           y       |     2     1     1
                       |                    
${=*}          n       |     2     2     0
${=@}          n       |     2     2     0
"${=*}"        n       |     2     2     1
"${=@}"        n       |     2     2     1'

log

maganda "The second column refers to whether or not the option shwordsplit is
set."
