#!/bin/bash
# display a listing of all the stuid and setgid files in the /usr filesystem

echo "SETUID Files in /usr"
echo "--------------------"
find /usr -type f -perm -4000 -ls

echo
echo "SEGID Files in /usr"
echo "-------------------"
find /usr -type f -perm -2000 -ls
