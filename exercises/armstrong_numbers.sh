#!/bin/bash

# check if the given number is armstrong or not
# number = 153
# length = 3
# armstrong = 1^3 + 5^3 + 3^3 = 153 : true && is armstrong

main() {
  var="$@" var2=0
  [[ -z $var ]] && exit 1
  for ((i = 0; i < ${#var}; i++)); do
    ((var2 += $((${var:i:1} ** ${#var}))))
  done
  ((var2 == var)) && echo "true" || echo "false"
}
main "$@"
