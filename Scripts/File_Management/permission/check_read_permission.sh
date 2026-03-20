#!/bin/bash

<< Task
	 This script checks whether a file has read permission.
   Behaviour
	 1. Takes file name as input
	 2. Checks if file exists
	 3. Checks read permission
	 4. Displays result
Task

# Author: Shiv Mishra
# ==========================================================

# Step 1: Take input
read -p "Enter file name: " file

# Step 2: Validate input
if [ -z "$file" ]; then
    echo "❌ Error: File name cannot be empty!"
    exit 1
fi

# Step 3: Check file exists
if [ ! -e "$file" ]; then
    echo "❌ File does not exist!"
    exit 1
fi

# Step 4: Check read permission
if [ -r "$file" ]; then
    echo "✅ File has read permission"
else
    echo "❌ File does NOT have read permission"
fi

echo "----------------------------------"
echo "Check completed."
