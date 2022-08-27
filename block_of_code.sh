#!/usr/bin/env bash
#{ ls ; pwd ; date; }

which httpd | echo "version is $(httpd -v)" || echo "httpd is not installed"
which httpd && { echo "httpd installed" ; echo "The httpd version is: $(httpd -v)" ; } || echo "apache ins not installed"
