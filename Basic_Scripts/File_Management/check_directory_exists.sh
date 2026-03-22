#!/bin/bash

<< Description
         This script checks whether a specified directory
	 exists in the given path.
	 It is useful for DevOps engineers and Linux
	 administrators when validating directories
	 used for logs, backups, or deployments.
Description

echo "========================================="
echo "        Directory Existence Utility"
echo "========================================="

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No directory name provided."
    echo "Usage: $0 <directory_name>"
    exit 1
fi

directory=$1

echo
echo "Checking directory: $directory"
echo "-----------------------------------------"

# Check if directory exists
if [ -d "$directory" ]; then
    echo "Success: Directory exists."
else
    echo "Failure: Directory does not exist."
fi

echo "-----------------------------------------"
echo "Directory check completed."
