#!/bin/bash

# this checks the value is a number by checking against a regex
# will accept negative numbers, but not decimal

re='^[-]?[0-9]+$'

if [[ $1 =~ $re ]]; then 
    
    if [ $(($1 % 2)) -eq 0 ]; then 
        echo "$1 is even"
    else 
        echo "$1 is odd"
    fi

else 
    echo "$1 has to be a whole number, can't check if even or odd"
fi