#!/usr/bin/env zsh

source $ZSHLOG_PATH

echo This is output > >(sed 's/output/rubbish/' >outfile)
