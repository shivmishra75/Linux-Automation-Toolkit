#!/bin/bash

<< Description
	 This script retrieves the public IP address of the
	 current machine using an external web service.
	 It is useful for DevOps engineers and system
	 administrators working with cloud servers,
	 remote machines, or NAT environments.
Description

echo "========================================="
echo "          Public IP Checker"
echo "========================================="

# Check if curl exists
if ! command -v curl &> /dev/null
then
    echo "Error: 'curl' command not found."
    echo "Install it using: sudo apt install curl"
    exit 1
fi

echo
echo "Fetching public IP address..."
echo "-----------------------------------------"

public_ip=$(curl -s ifconfig.me)

# Check result
if [ -z "$public_ip" ]; then
    echo "Error: Unable to retrieve public IP."
else
    echo "Your Public IP Address:"
    echo "$public_ip"
fi

echo "-----------------------------------------"
echo "Public IP check completed."
