#!/usr/bin/env bash

#for each_value in 1 2 3
for each_file in $(ls)
do
	echo "this is a loop"
	echo "for this iteration each_value is: ${each_file}"
done


#c language type for loop

for ((i=0; i<=10 ; i++))
do
	echo "loop no. ${i}"
done

#infinite loop

#for ((;;))
#do
#	echo "infinite"
#done

#breaking the infinite loop
echo "breaking the inf loop"
y=1
for((;;))
do
	echo "this is an infinite loop no. ${y}"
	((y++))
	sleep 1
	if [[ ${y} -eq 10 ]]
	then
		break
	fi
done
echo "out of loop"
