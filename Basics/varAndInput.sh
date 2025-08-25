#!/bin/bash
# bash stores everything as string
# on basis of use the the stores value is changed
# example 
var1="5"
var2="4"
echo $var1+$var2 # treated as string  
echo $((var1 + var2)) # treated as integer/number

# (( )) is used to evaluate arthmatic operation 
# $(( )) same but varable can be uesd init

# Read Inputs by using read
# format:  read -{flag} -{varible name}
read variableName
echo you wrote : $variableName

# read have many other stuff to use most useful one I know is -p flag 
 read -p "What is your name : " variableS
echo "your name is : " $variableS
