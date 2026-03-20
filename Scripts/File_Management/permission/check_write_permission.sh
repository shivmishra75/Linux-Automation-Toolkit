#!/bin/bash

<< Task
	 This script checks whether a file has write permission.
   Behaviour:
	 1. Accepts file name as argument OR user input
	 2. Validates input
	 3. Checks if file exists
	 4. Checks write permission
Task

# Author: Shiv Mishra
# ==========================================================

#step 1: Input handling

if [ -n "$1" ]; then
    file="$1"
else
   read -p "Enter file name: " file
fi

#step 2: Validate input

if [ -z "$file" ]; then
    echo " Error: File name cannot be empty!"
    exit 1
fi

#step 3: check file exists
if [ ! -e "$file" ]; then
    echo " File dose not exist!"
    exit 1
fi

#step 4: check write permission 
if [ -w "$file" ]; then
    echo " File has write permission"
else
    echo " File dose NOT have write permission"
fi

echo "----------------------------------------"
echo "check completed. " 

