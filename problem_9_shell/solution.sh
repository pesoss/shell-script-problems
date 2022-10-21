#!/bin/bash
cat planets.txt | egrep --color "^[[:alpha:]]+;$(cat planets.txt | tail -n +2 | cut -d ';' -f 2,3 | sort -n -t ';' -k 2 | tail -n 1 | cut -d ';' -f 1)" | sort -n -t ';' -k 3 | head -n 1 | cut -d ';' -f 1,4 | sed 's/;/\t/g'
