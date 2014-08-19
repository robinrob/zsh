#!/usr/bin/env zsh

# Usage: ./parse_opts.sh -l logfile -p process -o test

while getopts :c:l:p:o:q:t: name
do
	case $name in
		l) LOG="$OPTARG" ;;        # LOG FILE
    p) PROC="$OPTARG" ;;       # Process name
    o) ONE_UP="$OPTARG" ;;     # One_Up Number
    q) PRNT="$OPTARG" ;;       # q Print queue 'FTP' for now
    c) CAT="$OPTARG" ;;        # lis file name
    t) FTPDEST="$OPTARG" ;;    # D = Disk, T = Tape
    *) usage ;;                # display usage and exit
	esac
done

function usage {
	echo "Usage: hello"
}

echo "LOG: $LOG"

echo "PROC: $PROC"

echo "ONE_UP: $ONE_UP"

echo "CAT: $CAT"