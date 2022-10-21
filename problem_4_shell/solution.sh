#!/bin/bash
cat /etc/passwd | egrep "/home/Inf" | cut -d ':' -f 1,5 | cut -d ',' -f 1 | egrep "[A-Za-z]+ [A-Za-z]+a$" | cut -d ':' -f 1 | cut -c 3,4 | sort -n | uniq -c
