#!/bin/bash
<< Task
	 This script checks whether a directory exists.
	 If it does not exist, it creates the directory.
   Behaviour -
	 1. Accepts directory name as argument OR asks user input
	 2. Validates input
	 3. Checks if directory exists
	 4. Creates directory if not present
   Description -
	 This script is useful in DevOps workflows where directory
	 validation is required before performing operations like
	 logging, backups, or deployments.
Task

# Author: Shiv Mishra
# ==========================================================

# -------------------------------
# Logging function
# -------------------------------

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
LOG_FILE="$SCRIPT_DIR/../../logs/toolkit.log"

log() {
    echo "$(date) : $1" >> "$LOG_FILE"
}
# -------------------------------
# Step 1: Input handling
# -------------------------------
if [ -n "$1" ]; then
    dir_name="$1"
else
    read -p "Enter directory name: " dir_name
fi

# -------------------------------
# Step 2: Validation
# -------------------------------
if [ -z "$dir_name" ]; then
    echo "❌ Error: Directory name cannot be empty!"
    exit 1
fi

# -------------------------------
# Step 3: Check existence
# -------------------------------
if [ -d "$dir_name" ]; then
    echo "✅ Directory already exists: $dir_name"
    log "Directory exists: $dir_name"
else
    # -------------------------------
    # Step 4: Create directory
    # -------------------------------
    mkdir -p "$dir_name"

    if [ $? -eq 0 ]; then
        echo "🚀 Directory created successfully: $dir_name"
        log "Directory created: $dir_name"
    else
        echo "❌ Failed to create directory!"
        log "Error creating directory: $dir_name"
        exit 1
    fi
fi

echo "---------------------------------------"
echo "Operation completed."
