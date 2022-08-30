#!/usr/bin/env bash

read -p "Do you want to start httpd? (y/n)" usrcnf

#(( 2 < 1 ))
#if [ "$usrcnf" = "y" ]
#if [[ $usrcnf = y || $usrcnf = yes ]]
#if [ $usrcnf = y -o $usrcnf = yes ]
if [[ $usrcnf =~ y|yes ]]
then
	echo "starting httpd..."
	sudo systemctl start httpd
else
	echo "skipping..."
fi
