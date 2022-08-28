#!/usr/bin/env bash

if [[ $(id -u) -eq 0 ]]
then
	if systemctl status httpd 1>/dev/null 2>/dev/null
	then
		echo "httpd is up and running"
	else
		echo "Starting httpd..."
		systemctl start httpd
		echo "httpd successfully started"
	fi
else
	if sudo -v 1>/dev/null 2>/dev/null
	then
		if systemctl status httpd 1>/dev/null 2>/dev/null
		then	
			echo "httpd is already running"
		else
			echo "Starting httpd..."
                	sudo systemctl start httpd
                	echo "httpd successfully started"
		fi
else
	echo "Sorry, you are not allowed to start httpd service, need privileges"
	fi
fi



#if systemctl status httpd 1>/dev/null 2>/dev/null
#then
#	echo 'httpd	[Ok!]'
#else

#	echo "starting httpd service ..."
#	systemctl start httpd
#	echo "service httpd successfully started"
#fi
