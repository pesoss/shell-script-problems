#!/bin/bash
find ~ -type f -perm 755 -exec chmod 775 {} \;
