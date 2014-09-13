#!/usr/bin/env zsh

# Usage: ./parse_opts.sh -l logfile -p process -o test

<<<<<<< HEAD
while getopts :c:l:p:o:q:t: name
=======
while getopts :r:l:p:o:q:t: name
>>>>>>> 1440dc7947c9fab13055e7a20d869393d8894559
do
	case $name in
		l) LOG="$OPTARG" ;;        # LOG FILE
    p) PROC="$OPTARG" ;;       # Process name
    o) ONE_UP="$OPTARG" ;;     # One_Up Number
    q) PRNT="$OPTARG" ;;       # q Print queue 'FTP' for now
<<<<<<< HEAD
    c) CAT="$OPTARG" ;;        # lis file name
    t) FTPDEST="$OPTARG" ;;    # D = Disk, T = Tape
    *) usage ;;                # display usage and exit
=======
    r) LIS="$OPTARG" ;;        # lis file name
    t) FTPDEST="$OPTARG" ;;     # D = Disk, T = Tape
    *) usage ;;                     # display usage and exit
>>>>>>> 1440dc7947c9fab13055e7a20d869393d8894559
	esac
done

function usage {
	echo "Usage: hello"
}

echo "LOG: $LOG"

echo "PROC: $PROC"

echo "ONE_UP: $ONE_UP"

<<<<<<< HEAD
echo "CAT: $CAT"
=======
if [ -z "$LOG" ]
then
    echo "LOG is null mate!"
fi

if [ -n "$1" ]
then
    echo "LOG not null mate!"
fi
>>>>>>> 1440dc7947c9fab13055e7a20d869393d8894559
