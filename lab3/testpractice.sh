#!/bin/bash
# this script domonstrates different kids of testing commands

[ -f /etc/resolve.conf ] && echo "/etc/resolve.conf exists'

if [ -x /bin/ls ]; then
	echo "/bin/ls is executable"
	if [ -w /bin/ls ]; then
		echo "/bin/ls is also writable"
	fi
	if [ -r /bin/ls ]; then
		echo "/bin/ls is also readable"
	fi
else
	echo "/bin/ls is not executable"
fi



if [ -n "$FLOOBLE" ]; then
	echo "FLOOBLE has something in it"
fi

if [ -n $USER }; then
	echo "USER has something in it"
fi


aar=(a b c d)
if []; then
	if [ ${#arr[@]} -ls 1 ]; then
	echo "arr has less than one element"
elif [ ${#arr[@]} -gt 1]; then
	echo "arr has one or more elements"
else
	echo "arr has exactly one element"
fi
