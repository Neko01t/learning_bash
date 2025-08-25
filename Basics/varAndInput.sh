#!/bin/bash

# In Bash, everything is stored as a string.
# Depending on how you use it, the stored value can be treated differently.

# Example:
var1="5"
var2="4"

echo $var1+$var2         # Treated as string
echo $((var1 + var2))    # Treated as integer/number

# (( )) is used to evaluate arithmetic operations.
# $(( )) is used for arithmetic expansion (variables can be used inside it).

# ----------------------------
# Reading input with 'read'
# Format: read [options] variable_name
read variableName
echo "You wrote: $variableName"

# 'read' has many useful options.
# The most useful one is the -p flag, which lets you display a prompt:
read -p "What is your name: " variableS
echo "Your name is: $variableS"
