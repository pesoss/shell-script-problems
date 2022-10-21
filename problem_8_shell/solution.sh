#!/bin/bash
cat /etc/passwd | egrep "^s[[:digit:]]+" | cut -d ':' -f 1,5,6 | cut -c 2- | sort -n -t ':' -k 1 | cut -d ':' -f 2- | sed -E 's/^([[:alpha:]]+ [[:alpha:]]+)[^:]*(:\/.*)$/\1\2/'
