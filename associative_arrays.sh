#!/usr/bin/env bash

#Associative arrays are the arrays with index values as strings.
#Generaly no need to declare normal arrays before using them but we have to declare Associative arrays before using them
#Associative arrays should be declared before execution.
#declare -A asso_array
#defining asso arrays:
#myassoarray=([name]="bash shell script" [version]=7.7)
#or
#myassoarray[name]="bash scripting"
#myassoarray[version]=7.9

my_array=(4 6 "bash shell" 7.9)
other_array=([5]=78 [9]="scripting" [56]=780)

#declaring asociative arrays
declare -A asso_array
asso_array=([name]="bash script" [version]=7)
echo "${asso_array[@]}"
echo "${!asso_array[@]}"
