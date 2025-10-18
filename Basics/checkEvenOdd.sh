#!/bin/bash 
read x
if (( x % 2 == 0 ));then 
    echo "Even"
else 
    echo "Odd"
fi