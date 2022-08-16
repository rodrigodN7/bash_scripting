#!/bin/bash
clear
echo -e "************\nhttpd status\n***********"

httpd_version=`httpd -v | grep -i version |awk {'print ($2,$3)'} | tr 'V' 'v'`
httpd_status=`systemctl status httpd | grep -i active | awk '{for(i=1;i<=NF-1;i++) printf $i" "; print ""}'`
echo ${httpd_version}
echo ${httpd_status}
echo 'Press enter to finish'
read junk
clear
