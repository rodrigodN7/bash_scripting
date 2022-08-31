#!/usr/bin/env bash

if [[ $(id -u) -ne 0 ]]
then
	echo "You do not have enough permissions"
	exit 1
fi

read -p "Enter your option: " option

if [[ $option == start ]]
then
	echo "Starting httpd..."
	systemctl start httpd
elif [[ $option == stop ]]
then
	echo "Stopping httpd..."
	systemctl stop httpd
elif [[ $option == restart ]]
then
	echo "Restarting httpd"
	systemctl restart httpd
elif [[ $option == status ]]
then
	echo "httpd status: "
	systemctl status httpd
elif [[ $option == version ]]
then
	version=$(httpd -v | cut -d " " -f3 | tr -d ",")
	echo "The version of httpd is: $version"
else
	echo "Your option is invalid"
	echo "Valid options are: start stop restart and version"
fi
