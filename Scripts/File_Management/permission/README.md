# 🔐 Permission Management Scripts

This module contains Bash scripts to **check and manage file permissions** in Linux.

These scripts are part of the **Linux Automation Toolkit** and demonstrate basic to intermediate **DevOps automation concepts** using shell scripting.

## 📂 Folder Structure

```
permission/
├── check_read_permission.sh
├── check_write_permission.sh
├── check_execute_permission.sh
├── permission_manager.sh
└── README.md
```
## 🧠 Overview

This module provides scripts to:

- Check **read permission**
- Check **write permission**
- Check **execute permission**
- Manage permissions interactively

These scripts help automate repetitive Linux tasks and improve system administration efficiency.

## ⚙️ Scripts Description

### 🔹 1. check_read_permission.sh

- Prompts user to enter a file name
- Checks if the file exists
- Verifies if the file has **read permission**

### 🔹 2. check_write_permission.sh

- Prompts user to enter a file name
- Checks if the file exists
- Verifies if the file has **write permission**

### 🔹 3. check_execute_permission.sh

- Prompts user to enter a file name
- Checks if the file exists
- Verifies if the file has **execute permission**

### 🔹 4. permission_manager.sh

- Accepts a file name from the user
- Validates file existence
- Displays an interactive menu
- Allows user to:
  - Add or remove read permission
  - Add or remove write permission
  - Add or remove execute permission
- Uses `chmod` command internally

## ▶️ How to Run

Make scripts executable:

```bash
chmod +x *.sh
```
Run any script:

```bash
./check_read_permission.sh
```
OR

```bash
./permission_manager.sh
```

## 💡 Example

```
Enter file name: text.txt
✅ File has read permission
```
## 🧪 Test Setup

Create a test file:

```bash
touch text.txt
```
Modify permissions:

```bash
chmod 644 text.txt
```
## 🔥 DevOps Concepts Covered

- File permission handling
- Conditional statements (`if`)
- User input handling
- Command-line automation
- Interactive shell scripting

## ⚠️ Notes

- These scripts work on **files present in the current directory**
- Provide full path if file is located elsewhere
- Avoid running scripts on critical system files

## 👨‍💻 Author

**Shiv Mishra**

## 🚀 Future Improvements

- Add logging system
- Support multiple files (batch mode)
- Add argument-based execution
- Integrate with main toolkit script

## 📌 Conclusion

This module is a beginner-to-intermediate level implementation of Linux permission management using Bash scripting.

It demonstrates how repetitive system tasks can be automated efficiently — a core concept in DevOps.
