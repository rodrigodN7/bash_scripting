#!/usr/bin/env bash

if [[ $# -ne 2 ]]
then
	echo "Please run the script as follows"
	echo "Usage: $0 <serviceName> <ActionToExecuteonService>"
	echo "Valid Actions to execute service are: stop start restart status"
	exit 1
fi

#read -p "Enter your service to execute: " serviceName
#read -p "Enter your action to execute on your service: ${serviceName}" action

serviceName=$1
action=$2

sudo systemctl ${action} ${serviceName}
