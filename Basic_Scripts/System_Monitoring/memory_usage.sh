#!/bin/bash

<< Description
	 This script displays the current memory usage
	 of the system using the 'free' command.
	 It helps DevOps engineers and system
	 administrators monitor RAM consumption.
Description

echo "========================================="
echo "          Memory Usage Monitor"
echo "========================================="

# Check if free command exists
if ! command -v free &> /dev/null
then
    echo "Error: 'free' command not found."
    exit 1
fi

echo
echo "Memory Information:"
echo "-----------------------------------------"

# Display memory usage in human readable format
free -h

echo "-----------------------------------------"
echo "Memory monitoring completed."
