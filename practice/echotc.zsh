#!/usr/bin/env zsh

zmodload -i zsh/termcap
echotc md
echo -n bold
echotc mr
echo -n reverse
echotc me
echo
