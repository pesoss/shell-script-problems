#!/bin/bash
find ~velin -inum $(find ~velin -type f -printf "%T@ %i %p\n" 2>/dev/null | sort -n -k 1 | tail -n 1 | cut -d ' ' -f 2) | grep -o '.' | grep '/' | wc -l
