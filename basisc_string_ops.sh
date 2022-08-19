#!/usr/bin/env bash

#defining a string variable
my_var=sometext
my_var1="more text"
cmdOut=$(date)

#displaying the string variable value
echo $my_var
echo ${my_var1}
echo ${cmdOut}

#finding  the length of a string
xLength=${#my_var}
echo ${xLength}
xLength=${#my_var1}
echo ${xLength}
xLength=${#cmdOut}
echo ${xLength}

#concatenation of a string
x="/etc"
y="/bin"
xyResult=$x$y
echo ${xyResult}

#convert String into lower/upper case
lowup="lower/upper"
echo ${lowup}
xlowup=${lowup^^}
echo ${xlowup}
xlowup=${lowup,,}
echo ${xlowup}

#replacing the part of the string using variable
myY="This Shell is in linux"
echo ${myY}
newY=${myY/Shell/Bash Shell}
echo ${newY}

#slicing the string/sub-string
#${variable_name:start_position:length}
my_text="This is a string"
echo ${my_text:3:7}

#string operations on paths
#realpath : converts each filename aargument to an absolute pathname but it do not validate the path
#basename: strips directory information, strip suffixes from filenames
#dirname : It will delete any suffix begining  with the last slash character and return the result
mypath=`realpath my_file.sh`
myfile=`basename ${mypath} .sh`
my_dir=`dirname ${mypath}`
echo ${mypath}
echo ${myfile}
echo ${my_dir}

