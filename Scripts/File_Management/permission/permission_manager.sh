#!/bin/bash

<< Task
	 This script allows users to manage file permissions.
   Behaviour
	 1. Accepts file name from user
	 2. Checks file existence
	 3. Provides menu to modify permissions
	 4. Updates permissions using chmod
Task

# Author: Shiv Mishra
# ==========================================================

# Step 1: Input file
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

# Function to show current permissions
show_permissions() {
    echo "----------------------------------"
    echo "Current Permissions:"
    ls -l "$file"
    echo "----------------------------------"
}

# Menu loop
while true
do
    echo ""
    echo "========= Permission Manager ========="
    echo "1. Check Permissions"
    echo "2. Add Read Permission"
    echo "3. Add Write Permission"
    echo "4. Add Execute Permission"
    echo "5. Remove Read Permission"
    echo "6. Remove Write Permission"
    echo "7. Remove Execute Permission"
    echo "8. Exit"
    echo "======================================"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            show_permissions
            ;;
        2)
            chmod +r "$file"
            echo "✅ Read permission added"
            ;;
        3)
            chmod +w "$file"
            echo "✅ Write permission added"
            ;;
        4)
            chmod +x "$file"
            echo "✅ Execute permission added"
            ;;
        5)
            chmod -r "$file"
            echo "❌ Read permission removed"
            ;;
        6)
            chmod -w "$file"
            echo "❌ Write permission removed"
            ;;
        7)
            chmod -x "$file"
            echo "❌ Execute permission removed"
            ;;
        8)
            echo "Exiting..."
            break
            ;;
        *)
            echo "❌ Invalid choice, try again"
            ;;
    esac
done
