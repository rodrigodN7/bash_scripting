#!/usr/bin/env bash

#An array is a data structure of the nash shell, which is used to store multiple data
#my_array=(ls pwd date 2 5.7) , no limit for length in an array
#empty array: myarray=()
#mycmds=(ls pwd date 5.7)
#myNewArray=(ls -lrt hostname -s)
#myNewArray=("ls -lrt" "hostname -s")
#declare -a NewArray

my_array=(10 pwd ls 5.7 "hello array")
echo ${my_array[1]}
echo ${my_array[*]}
echo ${my_array[@]}
echo "${my_array[@]:3}"
echo "${my_array[@]:1:2}"
echo ${my_array[-1]}
echo ${!my_array[@]} #printing index values
echo ${#my_array[@]} #find the length (number of elements) of an array

new_array=(date cal who "pwd")
echo ${new_array[@]}
new_array[3]="bash" #customize index value
echo ${new_array[@]} #printing index values
new_array=([5]="hello" [9]="world") #or an array can be customized like this
echo ${new_array[@]}
array_cmd=($(date)) #storing the output of a command into an array
echo ${array_cmd[@]}
echo ${!array_cmd[@]}
echo ${#array_cmd[@]}
echo ${array_cmd[1]}
array_cmd+=("new value")
echo ${array_cmd[@]}
echo ${!array_cmd[@]}
echo ${#array_cmd[@]}
echo ${array_cmd[7]} #updating the new_array
read -a new_array #reading the new_rray, will store the valus input in the array
echo ${new_array[@]}
#or: read -p "enter the values of array" -a my_array

