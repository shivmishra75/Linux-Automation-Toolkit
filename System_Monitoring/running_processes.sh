#!/bin/bash

<< Description
	 This script displays currently running processes
	 on the system. It helps DevOps engineers and
	 system administrators monitor active processes
	 and identify resource consumption.
Description

echo "========================================="
echo "        Running Processes Monitor"
echo "========================================="

# Check if ps command exists
if ! command -v ps &> /dev/null
then
    echo "Error: 'ps' command not found."
    exit 1
fi

echo
echo "Top Running Processes:"
echo "-----------------------------------------"

# Show top 10 processes
ps aux --sort=-%cpu | head -10

echo "-----------------------------------------"
echo "Process monitoring completed."
