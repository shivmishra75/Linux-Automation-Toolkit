#!/bin/bash

<< Task
	 This script provides a menu to manage:
	 - Directory operations
	 - File operations
	 - Permission operations
Task

# Author: Shiv Mishra
# ==========================================================

while true
do
    echo ""
    echo "========= FILE MANAGEMENT MENU ========="
    echo "1. Directory Management"
    echo "2. File Management"
    echo "3. Permission Management"
    echo "4. Exit"
    echo "========================================"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            bash directory/check_and_create_directory.sh
            ;;
        2)
            bash file/check_and_create_file.sh
            ;;
        3)
            bash permission/permission_manager.sh
            ;;
        4)
            echo "Exiting File Management..."
            break
            ;;
        *)
            echo "❌ Invalid choice! Try again."
            ;;
    esac
done
