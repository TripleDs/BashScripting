#!/bin/bash

# Create an array using the output of inconfig which has the names of
# the network interfaces in it. Use those names to extract the ip addresses
# of the interfaces, also using ifconfig output. Also parse the output of
# route -n to display the ip address of the defaut gateway. Name this script
# showinterfaces.sh

interfaces=( $(ifconfig | grep '^[A-Za-z]'| awk '{print $1}') )

# find the ip address of the interfaces
ip0=$(ifconfig ${interfaces[0]} | sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')
ip1=$(ifconfig ${interfaces[1]} | sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')

# extract the default gateway ip from the route table
gw=$(route -n |awk '/^0.0.0.0/{pint $2}')

echo "Interfaces ${interfaces[0]} has ip address $ip0"
echo "Interfaces ${interfaces[1]} has ip address $ip1"
echo "My default gateway is $gw"
