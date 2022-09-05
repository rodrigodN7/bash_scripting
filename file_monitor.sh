#!/usr/bin/env bash

mail_id="my@mail.com"

#echo -e "The file system utilization on $(hostname -s) is: \n $(df -H | grep -Ev "udev|tmpfs")" | /usr/bin/mail -s "File System Utilization ${mail_id}"
my_cmnd=$(df -H | grep /dev/xvda | awk '{print $5}' | tr -d "%")

if [[ ${my_cmnd} -ge 80 ]]
then 
	#echo "The file system /dev/xvda usage is: $my_cmd" | /usr/bin/mail -s "File system utilization alert" "$mail_id"
fi
