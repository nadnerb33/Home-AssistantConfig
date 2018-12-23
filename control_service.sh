#!/bin/bash

SERVICE=$2
ACTION=$1

if [ $ACTION = "status" ]
then 
	if  sudo systemctl status $SERVICE | grep running > /dev/null
	then
           # echo "on"
	    exit 0
	else
#		echo "off"
	    exit 1
	fi
elif [ $ACTION = "start" ]
then 
	sudo systemctl start $SERVICE
	exit 0
elif [ $ACTION = "stop" ]
then 
	sudo systemctl stop $SERVICE
	exit 0
else  
	echo "error: invalid action"
	exit
fi
