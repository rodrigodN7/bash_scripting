#!/usr/bin/env bash

#echo "bash my_script.sh" | at 7:00 AM 
#echo "bash my_script.sh" | at 7:00 AM next month 
#echo "bash my_script.sh" | at now + 30minutes 
#echo "bash my_script.sh" | at now + 1 hour
#echo "bash my_script.sh" | at now + 1 week
#echo "bash my_script.sh" | at now + 2 weeks
#echo "bash my_script.sh" | at now + 1 year 
#echo "bash my_script.sh" | at now + 2 years
#echo "bash my_script.sh" | at midnight 
#echo "bash my_script.sh" | at 7:00 AM Sun
#echo "bash my_script.sh" | at 7:00 AM July 25
#echo "bash my_script.sh" | at 7:00 AM 7/22/2022
echo "bash if_elif.sh" | at 8:15 PM 30.08.2022
#show list ob jobs
atq

#crontab is used for running specific tasks on a regular interval
#we can use crontab.guru web app as option
#each user can schedule jobs using crontab
#syntax: minute(s) hour(s) day(s) month(s) weekday(s) username command/script
#each scheduled job has six fields
#do not change the order and six fields are separated by space
#the first five are integer patterns an the sixth is the command/script to execute
#field		value
#minute		0-59
#hour		0-23
#day		1-31
#month		1-12
#weekday	0-6	(Sunday=0, Monday=1, Tuesday=2...)
#
#
#crontab -e	to shcedule a job
#crontab -l	to list the jobs (crontab -u user_name -1)
#crontab -r	to remove jobs

* * * * * ls -lrta /var/tmp/ >> /var/tmp/mylog.txt

#minute(s) hour(s) day(s) month(s) weekday(s) username command/script
#58 2 30 11 6 my_script.sh	
#58 2 30 * 6 my_script.sh
#58 2 30 * * my_script.sh
#58 2 30 * * my_script.sh
#58 2 30 * * my_script.sh
#58 * * * * my_script.sh
#0 9 * * * my_script.sh
#0 21 * * * my_script.sh
#0 9,21 * * * my_script.sh
#0 */2 * * * my_script.sh	/executes every two hours
#0 0 1 1 * my script.sh		/executes once yearly
#@yearly my_script		/executes once yearly
#@monthly
#@weekly
#@daily
#@hourly
#@reboot			/useful for tasks which you want to run on your system startup@reboot			/useful for tasks which you want to run on your system startup..
#

