#!/bin/bash

<< Task
	 This script checks whether a file has execute permission.
   Behaviour-
	 1. Accepts file name as argument OR user input
	 2. Validates input
	 3. Checks if file exists
	 4. Checks execute permission
Task

# Author: Shiv Mishra
# ==========================================================
    
# Step 1: Input handling
if [ -n "$1" ]; then
    file="$1"
else
    read -p "Enter file name: " file
fi

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

# Step 4: Check execute permission
if [ -x "$file" ]; then
    echo "✅ File has execute permission"
else
    echo "❌ File does NOT have execute permission"
fi

echo "----------------------------------"
echo "Check completed."
