#!/bin/bash

<< Description
	 This script checks network connectivity to a specified
	 host using the ping command.
	 It helps DevOps engineers and system administrators
	 quickly verify whether a server or domain is reachable.
Description

echo "========================================="
echo "        Network Connectivity Check"
echo "========================================="

# Check if argument provided
if [ $# -eq 0 ]; then
    echo "Error: No host provided."
    echo "Usage: $0 <host>"
    exit 1
fi

host=$1

# Check if ping command exists
if ! command -v ping &> /dev/null
then
    echo "Error: 'ping' command not found."
    exit 1
fi

echo
echo "Pinging host: $host"
echo "-----------------------------------------"

ping -c 4 "$host"

if [ $? -eq 0 ]; then
    echo
    echo "Success: Host is reachable."
else
    echo
    echo "Failure: Host is unreachable."
fi

echo "-----------------------------------------"
echo "Ping test completed."
