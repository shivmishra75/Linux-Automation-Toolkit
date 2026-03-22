#!/bin/bash

<< Description
	 This script checks whether a specific port on a host
	 is open or reachable using the netcat (nc) command.
	 It helps DevOps engineers verify if services such as
	 HTTP (80), HTTPS (443), SSH (22), or databases are
	 accessible on a remote server.
Description

echo "========================================="
echo "          Port Connectivity Check"
echo "========================================="

# Validate arguments
if [ $# -lt 2 ]; then
    echo "Error: Host and port required."
    echo "Usage: $0 <host> <port>"
    exit 1
fi

host=$1
port=$2

# Check if nc exists
if ! command -v nc &> /dev/null
then
    echo "Error: 'nc' (netcat) command not found."
    echo "Install it using: sudo apt install netcat"
    exit 1
fi

echo
echo "Checking port connectivity..."
echo "Host: $host"
echo "Port: $port"
echo "-----------------------------------------"

# Port check
nc -z -w 3 "$host" "$port"

if [ $? -eq 0 ]; then
    echo "Success: Port $port is OPEN on $host."
else
    echo "Failure: Port $port is CLOSED or unreachable."
fi

echo "-----------------------------------------"
echo "Port check completed."
