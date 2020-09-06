#!/bin/sh

function fib {
	if [ $1 -eq 0 ] || [ $1 -eq 1 ]; then
		echo $1
	else
		t1=$(fib $(( $1 - 1 )) )
		t2=$(fib $(( $1 - 2 )) )
		echo $(( $t1 + $t2 ))
	fi
}

if [ $# -ne 1 ]; then
	echo "Usage: $0 <n>"
	exit -1
fi

echo $(fib $1)

# fib(n) = fib(n-1) + fib(n-2)
