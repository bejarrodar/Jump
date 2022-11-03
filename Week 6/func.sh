#!/bin/bash

function myfunc {
	local ans=$(($1+$2))
	echo "First argument $1"
	echo "Second argument $2"
	echo "$1 + $2 = $ans"
}
result=$(myfunc $1 $2)
echo "results = $result"
