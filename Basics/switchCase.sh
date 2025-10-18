#!/bin/bash
read -p "Enter the head or tails (Hh/Tt) : " word

case $word in
  tails | t | T)
    echo "Yay, you tried to win"
    ;;
  head | h | H)
    echo "You won somehow but you barely lost"
    ;;
  *)
    echo "HUH!? what is that"
    ;;
esac
