#!/usr/bin/env bash

read -p "Enter num1:" a
read -p "Enter num2:" b
read -p "Enter your option(1.Addition,2.Sub,3.Mul,4.Div): " opt

case $opt in

	1)
		echo "You selected addition"
		echo "The Addition of $a and $b is: $((a+b))"
		;;
	2)
		echo "You selected substraction"
                echo "The Addition of $a and $b is: $((a-b))"
                ;;
	3)
		echo "You selected multiplication"
                echo "The Addition of $a and $b is: $((a*b))"
                ;;
	4)
		echo "You selected division"
                echo "The Addition of $a and $b is: $((a/b))"
                ;;
	[0-9])
		echo "Entered a number"
		;;
	[A-Z])
		echo "Entered an upper case"
		;;
	[a-z])
		echo "Entered a lower case"
		;;

	*)
		echo "You selected invalid option"
		;;
esac	
