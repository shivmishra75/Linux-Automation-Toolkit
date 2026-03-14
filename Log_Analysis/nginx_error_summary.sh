#!/bin/bash

<< Description
	 This script analyzes Nginx error logs and provides a
	 summary of the most frequent errors.
	 It helps DevOps engineers and system administrators
	 quickly identify common problems occurring in a web
	 server environment.
Description

echo "========================================="
echo "        Nginx Error Log Analyzer"
echo "========================================="

LOG_PATH="/var/log/nginx"
TEMP_FILE="nginx_error_summary.tmp"

echo
echo "Scanning logs in: $LOG_PATH"
echo "-----------------------------------------"

# Check if nginx log directory exists
if [ ! -d "$LOG_PATH" ]; then
    echo "Error: Nginx log directory not found."
    exit 1
fi

# Extract error types from all nginx error logs
grep -oE '\[(error|crit|alert|emerg|warn|notice)\]' $LOG_PATH/error.log* 2>/dev/null \
| tr -d '[]' \
| sort \
| uniq -c \
| sort -nr > $TEMP_FILE

# Check if results exist
if [ ! -s "$TEMP_FILE" ]; then
    echo "No errors found in the nginx logs."
else
    echo "Nginx Error Type Summary:"
    echo
    printf "%-10s %-10s\n" "Count" "Level"
    echo "-----------------------------------------"
    awk '{printf "%-10s %-10s\n", $1, $2}' $TEMP_FILE
fi

# Clean up
rm -f $TEMP_FILE

echo "-----------------------------------------"
echo "Log analysis completed."
