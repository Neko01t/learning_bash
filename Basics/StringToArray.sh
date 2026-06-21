#!/bin/bash

# Turning String into array
str=$(ls)
str+=$'\n'
declare -a arr
len=${#str}
j=0
for ((i = 0; i < len; i++)); do
  curr="${str:$i:1}"
  if [[ $curr == $'\n' ]]; then
    ele="${str:$j:$i-$j}"
    if [[ -n "$ele" ]]; then
      arr+=("$ele")
    fi
    j=$((i + 1))
  fi
done
echo "${arr[0]}"

# for ((i = 0; i < ${#arr[@]}; i++)); do
# echo ${arr[i]}
# done

# 2nd Method I found on google It is effecient
StrToArr() {
  str2="${str// /,}" # can skip it and give IFS=" "
  # it changes the delimiter to ',' then reverts back when its  work is done
  IFS=',' read -r -a arr2 <<<"$str2" # reading the input from the string2 var and adding it to the arr
  # the delimiter defines when the item is finshed and next item starts
  # print it
  for ((i = 0; i < ${#arr2[@]}; i++)); do
    echo ${arr2[i]}
  done
}
