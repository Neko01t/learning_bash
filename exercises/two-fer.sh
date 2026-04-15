#!/bin/bash

# One for, exerscse , init u take a input as name and create a string
# that string if name is there then it will say "one for _name_, one for me"
# and if no name is given then we will ehco "One for you, one for me "
#
# -z is tag will check if string length is zero

main() {
  name=$1
  if [[ -z $name ]]; then
    echo "One for you, one for me."
  else
    echo "One for $name, one for me."
  fi
}

main "$@"
