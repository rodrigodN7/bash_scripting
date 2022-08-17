#!/bin/bash

tr [a-z] [A-z] <<< "hello from bash!"
my_var="BASH SHELL SCRIPTING"
tr [a-z] [A-z] <<< ${my_var}
tr [a-z] [A-z] <<< $(httpd -v)
