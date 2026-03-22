#!/bin/bash

<< Description
	 This script displays disk usage information for all
	 mounted file systems using the 'df' command.
	 It helps DevOps engineers and system administrators
	 monitor storage utilization and detect low disk space.
Description

echo "========================================="
echo "           Disk Usage Monitor"
echo "========================================="

# Check if df command exists
if ! command -v df &> /dev/null
then
    echo "Error: 'df' command not found."
    exit 1
fi

echo
echo "Disk Usage Information:"
echo "-----------------------------------------"

# Display disk usage in human readable format
df -h

echo "-----------------------------------------"
echo "Disk usage monitoring completed."
