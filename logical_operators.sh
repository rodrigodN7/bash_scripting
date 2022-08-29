#!/usr/bin/env bash

## Logical and: && or -a
##Logical or: || or -o
##Logical not: !

read -p "Enter your number: " num

#if [[ ${num} -ge 50 && ${num} -le 100 ]] 
if [ ${num} -ge 50 -a ${num} -le 100 ]  #note -a only works inside [ ] and nt inside [[ ]]
then
	echo "${num} is greater than or equals to 50"
else
	echo "${num} is not greater than or equals to 50"
fi

###other eg

read -p "Enter your confirmation to start httpd: (say yes or no)" cnf

#if [[ $cfn == "yes" ]] || [[ $cfn == "y" ]]
if [[ $cfn == "yes" || $cfn == "y" ]]
then
	echo "starting shttpd..."
	sudo systemctl start httpd
else
	echo "skipping..."
fi
