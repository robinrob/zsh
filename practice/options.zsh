#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Demo of how to read options into a function"

log 'testopts() {
    # $opt will hold the current option
    local opt
    while getopts ab:c:ABC: opt; do
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

magenta "The colon ':' specifies whether an option takes an argument or not!!
So in this example: the options b, c and C take arguments.

The message that is printed if an option -\? is given, is not necessary as the
shell prints a similar error message itself. This can be turned off by putting
a colon at the beginning of the specification of the allowed options!
Like this: :ab:cABC:"


log


cyan "Actually, having the \? as unquoted in the case list can be useful to
an error message, in the event that an option name is added to the options list,
but you forget to add an entry to the case list:"

log 'testopts() {
    # $opt will hold the current option
    local opt
    while getopts ab: opt; do
      # loop continues till options finished
      # see which pattern $opt matches...
      case $opt in
        (a)
           print Option a set
           ;;
        (?)
           print Bad option, aborting.
           return 1
           ;;
      esac
    done
}

testopts -a -b dickhead'

magenta "If the error isn't caught by the matching \? (which matches at least
one character!) then the shell will continue with no errors, which can be
confusing later on."


log


cyan "Actually, having the \? as unquoted in the case list can be useful to
an error message, in the event that an option name is added to the options list,
but you forget to add an entry to the case list:"

log 'testopts() {
    # $opt will hold the current option
    local opt
    while getopts ab: opt; do
      # loop continues till options finished
      # see which pattern $opt matches...
      case $opt in
        (a)
           print Option a set
           ;;
        (?)
           print Bad option, aborting.
           return 1
           ;;
      esac
    done

  print "OPTIND: $OPTIND"
  print "args: $@"
}

testopts -a -b dickhead'

magenta "If the error isn't caught by the matching \? (which matches at least
one character!) then the shell will continue with no errors, which can be
confusing later on."

