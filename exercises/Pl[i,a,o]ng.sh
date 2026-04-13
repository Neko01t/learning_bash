#!/bin/bash

# The raindrop problem
# we code so anything thats divided by 3 5 or 7 makes the sound pling plang and plong
# if its divide by 3 then its be pling
# if by 5 then plang and if by 3 and 5 both then plingplang
# and so on you got the gist
#
# 3 = Pling
# 5 = Plang
# 7 = Plong

main() {
  n="$1"
  sound=""
  s1="Pling"
  s2="Plang"
  s3="Plong"
  if (($n % 3 == 0)); then
    sound="$sound$s1"
  fi
  if (($n % 5 == 0)); then
    sound="$sound$s2"
  fi
  if (($n % 7 == 0)); then
    sound="$sound$s3"
  fi
  if (($n % 7 != 0 && $n % 3 != 0 && $n % 5 != 0)); then
    sound="$n"
  fi
  echo "$sound"
}

main "$@"
