#!/bin/bash

<< Description
	 This script displays the current CPU usage of the system.
	 It is useful for DevOps engineers and system administrators
	 to monitor system performance during troubleshooting.
Description

echo "========================================="
echo "           CPU Usage Monitor"
echo "========================================="

# Check if top command exists
if ! command -v top &> /dev/null
then
    echo "Error: 'top' command not found."
    exit 1
fi

# Display CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

echo
echo "Current CPU Usage: $cpu_usage %"

echo "-----------------------------------------"
echo "CPU monitoring completed."
