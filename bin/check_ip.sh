#!/bin/bash

IP_ADDR=$(ifconfig eth0 | grep "inet " | sed -r 's@.*inet (.*) net.*@\1@g' | awk 'BEGIN{ FS="." } { print $1 }')

if [[ "$IP_ADDR" -lt "100" ]]; then
    IP_TYPE="INTERNAL"
else
    IP_TYPE="EXTERNAL"
fi

case "$IP_TYPE" in
    INTERNAL)
	# echo INTERNAL
	exit 1
	;;
    EXTERNAL)
	# echo EXTERNAL
 	exit 2
	;;
     *)
	exit 3
 	;;
 
esac
