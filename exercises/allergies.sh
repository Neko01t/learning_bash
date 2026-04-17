#!/bin/bash

main() {
  local score="$1"
  local allergy_list=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
  local results=()

  if [[ -z "$score" || ! "$score" =~ ^[0-9]+$ ]]; then
    echo "Usage: $0 <numeric_score>"
    return 1
  fi

  if ((score == 0)); then
    echo "Not allergic"
    return 0
  fi

  for ((i = 0; i < 8; i++)); do
    if (((score & (1 << i)) != 0)); then
      results+=("${allergy_list[i]}")
    fi
  done

  echo "${results[@]}"
}

main "$1"
