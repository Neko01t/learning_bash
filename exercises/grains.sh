#!/bin/bash

main() {
  n=$1
  if ((n < 0)); then
    m=$((n * -1))
  else
    m=$n
  fi
  m=$((m - 1))
  result=$(awk -v m="$m" 'BEGIN {print 2^m}')
  echo $result
}
main "$@"
