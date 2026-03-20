#!/bin/bash

<< Task
	 This script checks whether a file exists.
	 If it does not exist, it creates the file.
   Behaviour
	 1. Accepts file name as argument OR asks user input
	 2. Validates input
	 3. Checks if file exists
	 4. Creates file if not present
   Description
	 This script is used in DevOps workflows where file
	 validation is required before logging, configuration,
	 or deployment tasks.
Task

# Author: Shiv Mishra
# ==========================================================

LOG_FILE="../../../../logs/toolkit.log"

log() {
    echo "$(date) : $1" >> "$LOG_FILE"
}

# Input Handling
if [ -n "$1" ]; then
    file_name="$1"
else
    read -p "Enter file name: " file_name
fi

# Validation
if [ -z "$file_name" ]; then
    echo "❌ Error: File name cannot be empty!"
    exit 1
fi

# Check File
if [ -f "$file_name" ]; then
    echo "✅ File already exists: $file_name"
    log "File exists: $file_name"
else
    touch "$file_name"

    if [ $? -eq 0 ]; then
        echo "🚀 File created successfully: $file_name"
        log "File created: $file_name"
    else
        echo "❌ Failed to create file!"
        log "Error creating file: $file_name"
        exit 1
    fi
fi

echo "---------------------------------------"
echo "Operation completed."
