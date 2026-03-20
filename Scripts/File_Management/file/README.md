# ================================
# FILE: README.md
# ================================

# 📄 File Management - File Module

## 📌 Overview

This module handles file-related operations in the Linux Automation Toolkit.  
It helps automate file validation and creation tasks used in DevOps workflows.

## 📜 Script Included

- check_and_create_file.sh

## 🎯 Objective

To check whether a file exists and create it if it does not.

## ⚙️ Behaviour

- Accepts file name as argument or user input
- Validates input
- Checks if file exists
- Creates file if not present
- Logs all operations

## 🔄 Execution Flow

Start  
↓  
Take Input  
↓  
Validate Input  
↓  
Check File Exists  
↓  
If Exists → Show Message  
If Not Exists → Create File  
↓  
Log Result  
↓  
End  

## ▶️ Usage

## Make executable

chmod +x check_and_create_file.sh

## Run with argument

./check_and_create_file.sh test.txt

## Run interactive

./check_and_create_file.sh

## 💡 Example

Enter file name: app.log  

🚀 File created successfully: app.log  

## 📂 Project Structure

scripts/  
└── file_management/  
	└── file/  
	     ├── check_and_create_file.sh  
	     └── README.md  

## 📝 Logging

logs/toolkit.log

## 🚀 DevOps Use Cases

- Log file creation  
- Config file initialization  
- Deployment file checks  
- Automation pipelines  

## ⚠️ Error Handling

- Prevents empty input  
- Handles creation failure  
- Shows clear messages  

## 👨‍💻 Author

** Shiv Mishra **

## 📌 Note

This script is part of a DevOps-focused Linux Automation Toolkit.
