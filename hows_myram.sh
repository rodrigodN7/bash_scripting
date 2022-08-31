#!/usr/bin/env bash

#This script send alert when ram is low

#to_mail="my@mail.com"
free_RAM=$(free -mt | grep -E "Total:" | awk '{print $4}')
status_RAM=$(free -mth | grep -E "Total:" | awk '{print $4}')
TH_L=400

if [[ $free_RAM -lt $TH_L ]]
then
	#echo -e "Server is running with low RAM Size\nAvailable RAM is: $free_RAM" | grep -s "RAM info" ${to_mail}
	echo -e "Server is running with low RAM Size\nAvailable RAM is: $free_RAM"
else
	echo "Ram is: ${status_RAM}"
fi
