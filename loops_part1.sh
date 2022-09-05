#!/usr/bin/env bash

for each in 1 2 3 4 5
do
	echo "Hello loop! ${each}"
done

#$given_path=$1
#for each in $(ls given_path)	#check all files in given path e.g. /opt/my_path
#for each in $(ls) #check al files in directory

if [[ $# -ne 1 ]]
then
	echo "Usage: $0 <any_path>"
	exit
fi

for each in httpd_info.sh httpd_ver.sh
do
	if [[ -x $each ]]
	then 
		echo "$each is having execution permission"
	else
		echo "$each is not having execution permission"
	fi
done
