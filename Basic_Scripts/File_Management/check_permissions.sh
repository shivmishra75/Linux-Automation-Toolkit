#!/bin/bash

<< Description
	 This script checks the read, write, and execute
	 permissions of a specified file or directory.
	 It helps Linux administrators and DevOps engineers
	 quickly verify access permissions during
	 troubleshooting or deployment validation.
Description

echo "========================================="
echo "         Permission Check Utility"
echo "========================================="

# Check argument
if [ $# -eq 0 ]; then
    echo "Error: No file or directory provided."
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

target=$1

# Check if file or directory exists
if [ ! -e "$target" ]; then
    echo "Error: '$target' does not exist."
    exit 1
fi

echo
echo "Checking permissions for: $target"
echo "-----------------------------------------"

# Read permission
if [ -r "$target" ]; then
    echo "Read Permission    : YES"
else
    echo "Read Permission    : NO"
fi

# Write permission
if [ -w "$target" ]; then
    echo "Write Permission   : YES"
else
    echo "Write Permission   : NO"
fi

# Execute permission
if [ -x "$target" ]; then
    echo "Execute Permission : YES"
else
    echo "Execute Permission : NO"
fi

echo "-----------------------------------------"
echo "Permission check completed."
