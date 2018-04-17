#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Variable edit - works like \`read\` but with full line-editing support!"

log 'vared -c -p "Please enter a line: " line'

magenta "The -c option is required to allow vared to create a new parameter,
otherwise it will complain that no parameter named 'line' exists."

magenta "The -h option allows previous commands to be retrieved while editing
the line!"
