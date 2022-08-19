#!/usr/bin/env bash

read -p "Enter your name:" my_name
my_name_caps=${my_name^^}
echo "Your name in upper case is: ${my_name_caps}"
