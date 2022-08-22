#!/usr/bin/env bash

#different ways to perform arithmetic operations:
#Using declare
#Using expr
#Using let
#using(()) (For integers)
#Using bc (For integer and float numbers)
x=10;
y=7;
bc <<< "$x + $y"
bc <<< "$x - $y"
bc <<< "$x * $y"
bc <<< "$x / $y"
bc <<< "$x % $y"
((sum=x+y))
((sub=x-y))
((mult=x*y))
((div=x/y))
((rem=x%y))
echo $sum
echo $sub
echo $mult
echo $div
echo $rem
result=$(bc<<<"scale=3;$x/$y")
echo ${result}
