#!/bin/bash
# this script prints out a welcome messate
# it demonstrates using variables

export MYNAME="DDD"
mytitle="LEGO COMMANDER"

myhostname=`hostname`
dayoftheweek=$(date +%A)

echo "Welcome to planet $myhostname, $mytitle $MYNAME!"
echo "Today is $dayoftheweek."
