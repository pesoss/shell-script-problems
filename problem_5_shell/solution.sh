#!/bin/bash
find . -maxdepth 1 -type f -printf "%f %n\n" 2>/dev/null | sort -nr -k 2 | head -n 5 | cut -d ' ' -f 1
