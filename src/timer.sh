#!/bin/sh

# !!! Please do not move line 4, because it gets replaced when 'make install' !!!
datadir=$(dirname $0)/../share

if [ $# -eq 2 ]; then
	delay=$1
	file=$2
elif [ $# -eq 1 ]; then
	delay=$1
	file=$datadir/timer.wav
else
	echo "Usage: $0 <time> [<file>]"
	exit 1
fi


sleep $delay

while true; do
	exec play $file
done