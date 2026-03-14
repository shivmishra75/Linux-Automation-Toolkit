#!/bin/bash

<< Description
	 This script traces the network path from the local
	 machine to a specified host using the traceroute command.
	 It helps DevOps engineers and system administrators
	 diagnose network latency and routing issues.
Description

echo "========================================="
echo "          Network Route Tracer"
echo "========================================="

# Check if argument provided
if [ $# -eq 0 ]; then
    echo "Error: No host provided."
    echo "Usage: $0 <host>"
    exit 1
fi

host=$1

# Check if traceroute exists
if ! command -v traceroute &> /dev/null
then
    echo "Error: 'traceroute' command not found."
    echo "Install using: sudo apt install traceroute"
    exit 1
fi

echo
echo "Tracing route to: $host"
echo "-----------------------------------------"

traceroute "$host"

echo "-----------------------------------------"
echo "Traceroute completed."
