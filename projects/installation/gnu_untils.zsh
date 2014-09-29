#!/usr/bin/env zsh

# Install GNU tools

# The --default-names option will prevent Homebrew from prepending gs to the newly installed commands, thus we could use these commands as default ones over the ones shipped by OS X.

brew tap homebrew/dupes > /dev/null 2> /dev/null

PACKAGES=(coreutils binutils diffutils ed findutils gawk gnu-indent gnu-sed gnu-tar gnu-which gnutls grep gzip screen watch wdiff wget)

function remove {
	brew remove $1
}

function install {
	brew install $1
}

for package in $PACKAGES
do
	install $package
done
	

