#!/bin/bash
find ~ -maxdepth 2 2>/dev/null -printf "%s %p\n" | sort -rn -t ' ' -k 1 | head -n 5 | cut -d ' ' -f 2- | xargs -I {} rm -i {}
