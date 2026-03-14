#!/bin/bash

<< Description
	 This script retrieves the local/private IP address
	 of the system using the 'hostname -I' command.
	 It helps DevOps engineers and system administrators
	 identify the machine's LAN IP for networking,
	 server configuration, and troubleshooting.
Description

echo "========================================="
echo "           Local IP Checker"
echo "========================================="

# Check if hostname command exists
if ! command -v hostname &> /dev/null
then
    echo "Error: 'hostname' command not found."
    exit 1
fi

echo
echo "Fetching local IP address..."
echo "-----------------------------------------"

local_ip=$(hostname -I | awk '{print $1}')

# Check result
if [ -z "$local_ip" ]; then
    echo "Error: Unable to retrieve local IP."
else
    echo "Your Local IP Address:"
    echo "$local_ip"
fi

echo "-----------------------------------------"
echo "Local IP check completed."
