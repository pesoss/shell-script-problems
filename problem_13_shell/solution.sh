#!/bin/bash
cat spacex.txt | tail -n +2 | sort -nr -t '|' -k 1 | grep "$(cat spacex.txt | tail -n +2 | grep "Failure" | sort -r -t '|' -k 2 | cut -d '|' -f 2 | uniq -c | awk '{print $2}' | head -n 1)" | head -n 1 | cut -d '|' -f 3,4 | tr '|' ':'
