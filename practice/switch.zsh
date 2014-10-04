#!/usr/bin/env zsh

# Switch statement in ZSH

msg="bye"

case $HOSTNAME in
	"venus": msg="hello" ;;
esac

echo $msg
