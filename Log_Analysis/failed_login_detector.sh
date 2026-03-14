#!/bin/bash

<< Description
	 This script scans Linux authentication logs to detect
	 failed SSH login attempts. It helps system administrators
	 and DevOps engineers quickly identify potential brute-force
	 attacks or unauthorized login attempts.
	 The script searches for "Failed password" entries in
	 authentication logs and displays the IP addresses along
	 with the number of failed attempts.
Description

echo "========================================="
echo "      Failed Login Attempt Detector"
echo "========================================="

# Detect authentication log file
if [ -f /var/log/auth.log ]; then
    LOG_FILE="/var/log/auth.log"
elif [ -f /var/log/secure ]; then
    LOG_FILE="/var/log/secure"
else
    echo "Error: Authentication log file not found."
    exit 1
fi

echo
echo "Analyzing log file: $LOG_FILE"
echo "-----------------------------------------"

# Check read permission
if [ ! -r "$LOG_FILE" ]; then
    echo "Permission denied. Try running with sudo."
    exit 1
fi

# Extract failed SSH login attempts
RESULT=$(grep "Failed password" "$LOG_FILE" \
| awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' \
| sort \
| uniq -c \
| sort -nr)

# Display results
if [ -z "$RESULT" ]; then
    echo "No failed SSH login attempts found."
else
    echo "Failed SSH Login Attempts by IP:"
    echo
    printf "%-10s %-20s\n" "Attempts" "IP Address"
    echo "-----------------------------------------"
    echo "$RESULT" | awk '{printf "%-10s %-20s\n",$1,$2}'
fi

echo "-----------------------------------------"
echo "Log analysis completed."

