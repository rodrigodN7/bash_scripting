#!/bin/bash

cat /etc/shells
echo -e "\e[31m${SHELL}\e[0m";

my_string='a string';

echo "This is ${my_string}";
my_date=$(date)
echo ${my_date}
