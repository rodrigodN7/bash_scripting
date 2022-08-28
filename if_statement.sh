#!/usr/bin/env bash

if  which httpd 2>/dev/null 1>/dev/null
then
	echo "httpd is instaled"

fi


which httpd 2>&1 1>/dev/null
if [[ $? -eq 0 ]]
then
	echo "$(httpd -v)"
fi


#if else if
if which httpd 2>&1 1>/dev/null
then
	echo "Apache is installed"
else
	echo "Apache is not installed"
fi
