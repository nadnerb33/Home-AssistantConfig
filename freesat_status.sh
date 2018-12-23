#!/bin/bash

#STATUS="$(echo 'pow 3' | /usr/osmc/bin/cec-client -t p -p 1 -d 1 -s | tail -n1 | grep 'power status' | awk '{print $3}')"
#if [ $STATUS = "on" ]

if  echo 'pow 3' | /usr/osmc/bin/cec-client -t p -p 1 -d 1 -s | tail -n1 | grep 'power status: on' > /dev/null
then
	echo "its on"
	exit 0
else
	echo "its off"
	exit 1
fi
