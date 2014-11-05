#!/usr/bin/env zsh

# INT means signal sent by ctrl+c - run and use ctrl+c to test.

trap "I caught a SIGINT!" INT
sleep 10
