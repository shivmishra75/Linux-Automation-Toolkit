#!/bin/bash

<<  Description
	 This script generates a quick health report of the server.
	 It displays important system metrics including:
	- System uptime
	- CPU load average
	- Memory usage
	- Disk usage
	- Top running processes
	 This script helps DevOps engineers quickly assess
	 the current health status of a Linux server.
Description

echo "========================================="
echo "         SERVER HEALTH REPORT"
echo "========================================="

echo
echo "Hostname:"
hostname

echo
echo "-----------------------------------------"
echo "System Uptime"
echo "-----------------------------------------"
uptime

echo
echo "-----------------------------------------"
echo "CPU Load Average"
echo "-----------------------------------------"
uptime | awk -F'load average:' '{print $2}'

echo
echo "-----------------------------------------"
echo "Memory Usage"
echo "-----------------------------------------"
free -h

echo
echo "-----------------------------------------"
echo "Disk Usage"
echo "-----------------------------------------"
df -h

echo
echo "-----------------------------------------"
echo "Top 5 Processes by CPU Usage"
echo "-----------------------------------------"
ps aux --sort=-%cpu | head -6

echo
echo "-----------------------------------------"
echo "Server health report completed."
