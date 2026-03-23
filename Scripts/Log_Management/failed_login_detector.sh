#!/bin/bash

<< Task
    This script detects failed SSH login attempts from system logs using journalctl (Kali Linux).

    Behaviour-
    1. Uses journalctl to read system logs
    2. Filters failed SSH login attempts ("Failed password")
    3. Counts total failed attempts
    4. Extracts top attacking IP addresses
    5. Displays last 10 failed login attempts
Task

# Author: Shiv Mishra
# ==========================================================

echo "🔐 Failed Login Detection Report"
echo "--------------------------------"

# Total failed login attempts
failed_count=$(journalctl -u ssh | grep "Failed password" | wc -l)
echo "Total Failed Login Attempts: $failed_count"

echo ""

# Top attacking IPs
echo "Top 5 Attacking IPs:"
journalctl -u ssh | grep "Failed password" | awk '{print $NF}' | sort | uniq -c | sort -nr | head -5

echo ""

# Last 10 failed attempts
echo "Last 10 Failed Login Attempts:"
journalctl -u ssh | grep "Failed password" | tail -10
