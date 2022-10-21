#!/bin/bash
find . -maxdepth 2 2>/dev/null -size 0 -exec rm -i {}\;
