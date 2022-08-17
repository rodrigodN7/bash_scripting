#!/bin/bash

#cat << EOF > my_out.txt
cat << EOF | grep 'this'

The user is: $USER
The home for this $USER is: $HOME

EOF
