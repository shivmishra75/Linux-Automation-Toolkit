#!/bin/bash

<< Description
	 This script creates a compressed backup of a specified
	 directory and stores it in a backup location.
	 The backup file is named using the current date and time
	 to maintain versioned backups.
	 This script is useful for DevOps engineers and system
	 administrators to automate periodic backups.
Description

echo "========================================="
echo "        Automated Backup Utility"
echo "========================================="

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

SOURCE_DIR=$1
BACKUP_DIR=$2

# Validate source directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist."
    exit 1
fi

# Create backup directory if not exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Backup directory not found. Creating..."
    mkdir -p "$BACKUP_DIR"
fi

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

echo
echo "Source Directory: $SOURCE_DIR"
echo "Backup Location : $BACKUP_DIR"
echo "Backup File     : $BACKUP_FILE"
echo "-----------------------------------------"

# Create backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Check result
if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
    exit 1
fi

echo "-----------------------------------------"
echo "Backup operation finished."
