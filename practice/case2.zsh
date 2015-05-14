#!/usr/bin/env zsh


vared -p "Enter option: " -c choice


# This is the proper ZSH case syntax:
case $choice in
  one)
    print "chose option one"
    ;;
  two)
    print "chose option two"
    ;;
  three)
    print "chose option three"
    ;;
esac
