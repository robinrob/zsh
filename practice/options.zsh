#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Demo of how to read options into a function"

log '
testopts() {
    # $opt will hold the current option
    local opt
    while getopts ab: opt; do
      # loop continues till options finished
      # see which pattern $opt matches...
      case $opt in
        (a)
           print Option a set
           ;;
        (b)
           print Option b set to $OPTARG
           ;;
	# matches a question mark
	# (and nothing else, see text)
        (\?)
           print Bad option, aborting.
           return 1
           ;;
      esac
    done
    (( OPTIND > 1 )) && shift $(( OPTIND - 1 ))
    print Remaining arguments are: $*
}

testopts -a -b wanker dickhead'
