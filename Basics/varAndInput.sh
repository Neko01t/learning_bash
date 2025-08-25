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
read variableName
echo you wrote : $variableName

