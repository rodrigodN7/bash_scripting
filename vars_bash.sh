#!/bin/bash

echo 'Bash Shell Scripting';
#declaring first variable
my_var='my first variable';
other_var=`date`
echo "This is ${my_var}";
echo 'Variables are useful to store data in shell scripts and Later we can use them if they are required'
echo 'Default value of a variable is empty/nothing'
echo ${my_other_var}
echo ${other_var}
echo 'In linux there are System variables, we can see them using set command'
set
echo 'And there are the user variables, declared by the programmer/developer'
echo 'the variable length must not exceed 20 characters.'
