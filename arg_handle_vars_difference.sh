#!/usr/bin/env bash

for each_arg in $@
do
	echo "the arg handled is: ${each_arg}"
done

for each_arg in $*
do
        echo "the arg handled is: ${each_arg}"
done


#NOte the effects when put into colons the $@ and $*
#try: ./script.sh arg1 "arg2 arg3" arg4

for each_arg in "$@"
do
        echo "the arg handled is: ${each_arg}"
done

for each_arg in "$*"
do
        echo "the arg handled is: ${each_arg}"
done


