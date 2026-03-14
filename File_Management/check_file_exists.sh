#!/bin/bash

: << Description
	This script checks whether a specified file exists in the current directory or given path.
	It is useful for Linux administrators and DevOps
	engineers when validating configuration files,scripts, or deployment artifacts
Description

echo "========================================="
echo "           File Existence Utility"
echo "========================================="

# Validate input

if [ $# -eq 0 ]; then
    echo "Error: No filename provided."
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

echo
echo "Checking file: $file"
echo "-----------------------------------------"

# Check if file exists
if [ -f "$file" ]; then
    echo "Success: File exists."
else
    echo "Failure: File does not exist."
fi

echo "-----------------------------------------"
echo "File existence check completed."
