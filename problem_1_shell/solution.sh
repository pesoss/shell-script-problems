#!/bin/bash
echo "Броят на търсените редове е" $(cat philip-j-fry.txt | egrep [02468] | egrep -v [a-w] | wc -l)"."
