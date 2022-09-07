#!/usr/bin/env bash

if [[ $# -eq 0 ]]
then
	echo "Usage: $0 pkg1 pkg2 ..."
	exit 1
fi


if [[ $(id -u) -ne 0 ]]
then
	echo " Please run as root"
	exit 2
fi

for each_pkg in $@
do
	#echo "current pkg: ${each_pkg}"

	if which ${each_pkg} &> /dev/null
	then
        	echo "${each_pkg} is already installed"
	else
        	echo "Installing ${each_pkg} ..."
        	yum install ${each_pkg} -y &> /dev/null

        	if [[ $? -eq 0 ]]
        	then
                	echo "successfully installed ${each_pkg} pkg"
        	else
                	echo "Unable to install ${each_pkg} pkg"
        	fi
	fi
done

<<comment

if which vim &> /dev/null
then
	echo "vim is already installed"
else
	echo "Installing vim ..."
	yum install vim -y &> /dev/null
	
	if [[ $? -eq 0 ]]
	then
		echo "successfully installed vim pkg"
	else
		echo "Unable to install vim pkg"
	fi
fi
comment
