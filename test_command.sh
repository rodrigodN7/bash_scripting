#!/usr/bin/env

#tes condition or [ conditio ] or [[ condition ]]
#[[]]works with bash/ksh/zsh shells

#Numbers:
#[[ int1 -eq int2 ]]	--It return true if they are equal, else false
#[[ int1 -ne int2 ]]	--It return flse if they are not equal, else true
#[[ int1 -lt int2 ]]	--It return true if int1 is less than int2, else false
#[[ int1 -le int2 ]]	--It return true if int1 is less than or equal to int2, else false
#[[ int1 -gt int2 ]]	--It return true if int1 is greater than int2, else false
#[[ int1 -ge int2 ]]	--It return true if int1 is greater than or equal to int2, else false
#[[ !int1 -eq int2 ]]	--It reverse the result

#Strings
#[[ -z str]]	--It return true if the length of the str is zero else false
#[[ -n str]]	--It return true if the length of the str is no-zero else false
#[[ str1 == str2 ]]	--It return true if both the strings are equal else false
#[[ str1 != str2 ]]	--It return true if both the strings are not equal else false

#File test Operators with test command
#[[ -d file ]]	--It return true if the file/path is directory else false
#[[ -f file ]]	--It return true if the file/path is a file else false
#[[ -e file ]]	--It return true if the file/path exists else false
#[[ -r file ]]	--It return true if the file/path is redeable  else false
#[[ -w file ]]	--It return true if the file/path is writable else false
#[[ -x file ]]	--It return true if the file/path is executable else false

#command chaining operators
#cmd1 ; cmd2	--Run cmd 1 and then cmd2, regardless of the success or failure of cmd1
#cmd1 && cmd2	--Run cmd2 only if cmd1 succeeded
#cmd1 || cmd2	--Run cmd2 only if cmd1 failed
#cmd1 && cmd2 || cmd3	--Run cmd2 if cmd1 is successful else run cmd3

int1=7
int2=9
[[ ${int1} -eq ${int2} ]]
echo $?
test int1 -eq int2
echo $?
