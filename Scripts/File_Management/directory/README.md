# ================================
# FILE: README.md
# ================================

# 📁 Directory Management Module

## 📌 Overview

The Directory Management module is part of the Linux Automation Toolkit.  
It helps automate directory-related operations commonly required in DevOps workflows such as deployment, logging, and backups.

---

## 📜 Script Included

- check_and_create_directory.sh

## 🎯 Objective

To check whether a directory exists and create it if it does not.

## ⚙️ Behaviour

- Accepts directory name as argument or user input
- Validates input
- Checks if directory exists
- Creates directory if not present
- Logs all operations

## 🔄 Execution Flow

Start  
↓  
Take Input  
↓  
Validate Input  
↓  
Check Directory Exists  
↓  
If Exists → Show Message  
If Not Exists → Create Directory  
↓  
Log Result  
↓  
End  

## ▶️ Usage

### Make executable

chmod +x check_and_create_directory.sh

### Run with argument

./check_and_create_directory.sh mydir

### Run interactive

./check_and_create_directory.sh

## 💡 Example

Enter directory name: logs  

🚀 Directory created successfully: logs  

---

## 📂 Project Structure

scripts/  
└── file_management/  
	└── directory/  
		├── check_and_create_directory.sh
		└── README.md  

## 📝 Logging

logs/toolkit.log

## 🚀 DevOps Use Cases

- Directory setup before deployment  
- Backup folder creation  
- Log directory setup  
- Automation pipelines  

## ⚠️ Error Handling

- Prevents empty input  
- Handles creation failure  
- Shows clear messages  

## 👨‍💻 Author

Shiv Mishra  


## 📌 Note

This script is part of a DevOps-focused Linux Automation Toolkit.
