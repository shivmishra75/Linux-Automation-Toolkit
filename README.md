# DevOps Linux Automation Toolkit

A practical collection of Bash automation scripts designed to simplify common Linux system administration and DevOps tasks.

This project demonstrates real-world automation skills including system monitoring, networking diagnostics, log analysis, file management, and backup automation.

The toolkit is intended for DevOps engineers, system administrators, and learners who want to automate routine server tasks using Bash scripting.

---

## Project Overview

Modern DevOps environments rely heavily on automation.  
This repository provides lightweight Bash utilities that help automate daily operational tasks on Linux servers.

These scripts are useful for:

- System monitoring
- Network troubleshooting
- Log analysis
- File management
- Automated backups

All scripts are written using standard Linux tools such as `grep`, `awk`, `tar`, `ps`, `df`, and `free`.

## Repository Structure

```
Linux-Automation-Toolkit/
│
├── Automation
│   └── auto_backup.sh
│
├── File_Management
│   ├── check_file_exists.sh
│   ├── check_directory_exists.sh
│   └── check_permissions.sh
│
├── Networking
│   ├── ping_host.sh
│   ├── dns_lookup.sh
│   ├── check_port.sh
│   ├── get_public_ip.sh
│   ├── get_local_ip.sh
│   └── traceroute_host.sh
│
├── System_Monitoring
│   ├── cpu_usage.sh
│   ├── memory_usage.sh
│   ├── disk_usage.sh
│   └── running_processes.sh
│
└── Log_Analysis
    ├── failed_login_detector.sh
    └── nginx_error_summary.sh
```

## Features

### System Monitoring
Scripts to monitor server health and system resources.

Examples:
- CPU usage monitoring
- Memory usage tracking
- Disk space analysis
- Running process inspection

### Networking Diagnostics
Utilities for debugging network connectivity issues.

Examples:
- Host connectivity testing
- DNS resolution
- Port availability checks
- Public and local IP discovery
- Network route tracing

### File Management
Basic file and directory validation scripts.

Examples:
- Check if file exists
- Check directory availability
- File permission verification

### Log Analysis
Scripts to analyze Linux server logs for troubleshooting and security insights.

Examples:
- Detect failed SSH login attempts
- Summarize Nginx error logs

### Backup Automation
Simple automated backup solution using compressed archives.

Example:
- Directory backup with timestamped archive

## Technologies Used

This project primarily uses standard Linux command-line tools:

- Bash Shell Scripting
- Linux CLI utilities
- awk
- grep
- sed
- tar
- ps
- df
- free
- netstat / ss
- traceroute

These tools are widely used in DevOps environments for automation and troubleshooting.

## Getting Started

### Clone the Repository

```
git clone https://github.com/shivmishra75/Linux-Automation-Toolkit.git
```

### Navigate to the Project

```
cd Linux-Automation-Toolkit
```

### Make Scripts Executable

```
chmod +x script_name.sh
```

### Run a Script

Example:

```
./cpu_usage.sh
```
## Example Use Cases

This toolkit can be used in real-world DevOps workflows such as:

- Monitoring server resource utilization
- Diagnosing network connectivity issues
- Automating backup operations
- Investigating login security incidents
- Analyzing web server errors
- Troubleshooting production servers

## Learning Goals

This project was built to practice:

- Linux system administration
- Bash scripting automation
- DevOps troubleshooting workflows
- Log parsing and analysis
- Network diagnostics
- Automation best practices

## Future Improvements

Possible future enhancements include:

- Docker container monitoring scripts
- Website uptime monitoring
- SSL certificate expiry checker
- Automated server health reports
- Cron-based automation workflows

## Author

**Shiv Mishra**

Aspiring DevOps Engineer  
Linux Automation Enthusiast  

GitHub:  
https://github.com/shivmishra75

## License

This project is open source and available under the MIT License.
