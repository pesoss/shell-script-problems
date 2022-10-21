#!/bin/bash
find ~pesho -type f -printf "%n %T@ %i\n" 2>/dev/null | egrep -v "^1" | cut -d ' ' -f 2- | sort -nr | head -n 1 | cut -d ' ' -f 2
