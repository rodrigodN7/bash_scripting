#!/usr/bin/env bash

#break, command is used to terminate/exit current loop completely before the actual ending of loop
#continue, 

echo "for loop with continue"
for each in $(seq 1 10)
do
	if [[ $each -eq 5 ]]
	then
		continue
	fi

	echo "$each"
done
echo "for loop with continue is over"

echo "for loop with break"
for each in $(seq 1 10)
do
        if [[ $each -eq 5 ]]
        then
                break
        fi

        echo "$each"
done
echo "for loop with break is over"
