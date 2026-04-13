#!/bin/bash
# Hello I am back after long going here and there
# on to the point
# Reversing a string
# we can reverse string in bash in many ways most easiest way is using rev
# rev is command-line utility used to reverse the characters
# it takes files as input
# so when reversing string in literal we just echo it
# heheh

# rev file.smtg
# [tnetnoc elif]

main() {
  local string=$1
  echo "$string" | rev
}
main "$@"
