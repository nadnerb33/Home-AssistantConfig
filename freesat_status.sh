#!/bin/bash

STATUS="$(echo 'pow 3' | /usr/osmc/bin/cec-client -t p -p 1 -d 1 -s | tail -n1 | grep 'power status' | awk '{print $3}')"
#cec-client &> /dev/null

if [ $STATUS = "on" ];


#STATUS=$(echo 'pow 3' | /usr/osmc/bin/cec-client -t p -p 1 -d 1 -s | tail -n1 | grep 'power status: on' > /dev/null)
#echo $STATUS
#exit

#if [ "$STATUS" -eq 1 ];
then
	#/usr/osmc/bin/cec-client -s > /dev/null
	echo "its on"
	exit 0
else
	#/usr/osmc/bin/cec-client -s > /dev/null
	echo "its off"
	exit 1
fi
