#!/usr/bin/env zsh

source $ZSH_HOME/colors.zsh

yellow "echo something:"
echo {Hello,Goodbye}\ World

yellow "ls files:"
ls {arithmetic,brace}_expansion.zsh

yellow "Create multiple files:"
touch log_00{1,2,3}.txt

ls log_00{1,2,3}.txt | grep "log.*.txt"

yellow "Using a range: {1..3}"
ls log_00{1..3}.txt | grep "log.*.txt"

rm log_00{1..3}.txt