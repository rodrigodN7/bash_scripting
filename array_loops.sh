#!/usr/bin/env bash

#creating the array
my_array=(httpd mysqld sshd)

#array in loop
for service in ${my_array[@]}
do
	echo "The service is: ${service}"
	systemctl status ${service} 1>/dev/null 2>/dev/null
	if [[ $? -eq 0 ]]
	then
		echo Service status: [ Ok! ]
	else
		echo "Service is not running"
	fi
done	
