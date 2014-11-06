#!/usr/bin/env zsh

source $ZSHLOG_PATH


mkdir crick crick/dna
mkdir watson watson/dna

cyan "This example demonstrates the usage of \$cdpath:"

lognl 'cdpath=($ZSH_HOME/practice/crick .); cd watson; cd dna; pwd'

maganda "The shell cd'ed into the 'dna' dir of 'crick', because 'crick' appeared in the \$cdpath
before the current directory. ZSH prints the name of the directory cd'ed into in
cases where it may be ambiguous like this - you can see this if you actually run the command in
your interactive shell."

echo

cyan "You'd want the current directory to appear before the path to crick to make it work 'correctly':"
lognl 'cdpath=(. $ZSH_HOME/practice/crick); cd watson; cd dna; pwd'

echo

cyan "The autocd mechanism also respects \$cdpath - autocd behaves as much as possible like \`cd dirname\`:"
lognl 'cdpath=(. $ZSH_HOME/practice/crick); cd watson; setopt autocd | dna; pwd'


rm -rf crick watson
