#!/bin/bash

<< Task
    This script detects suspicious IPs based on failed SSH login attempts.

    Behaviour:
    1. Reads logs using journalctl (Kali compatible)
    2. Extracts both IPv4 and IPv6 addresses
    3. Filters only valid IPs
    4. Counts failed attempts per IP
    5. Displays only IPs exceeding threshold
    6. Clean and readable output
Task

# Author: Shiv Mishra
# ==========================================================

THRESHOLD=5

echo ""
echo "🚨 Suspicious IP Detection Report"
echo "================================="
echo ""

# Extract IPv4 + IPv6
LOG_DATA=$(journalctl -u ssh --no-pager 2>/dev/null | grep "Failed password")

# Extract IPs (both IPv4 & IPv6)
IP_LIST=$(echo "$LOG_DATA" | awk '{
    for(i=1;i<=NF;i++){
        if($i=="from"){
            print $(i+1)
        }
    }
}')

# Filter valid IPs only (IPv4 + IPv6)
VALID_IPS=$(echo "$IP_LIST" | grep -E '^([0-9]{1,3}\.){3}[0-9]{1,3}$|:')

# Count attempts
SORTED=$(echo "$VALID_IPS" | sort | uniq -c | sort -nr)

echo "📊 Suspicious IPs (Attempts > $THRESHOLD)"
echo "-----------------------------------------"

found=0

while read -r count ip
do
    if [ "$count" -gt "$THRESHOLD" ]; then
        printf "⚠️  %-20s → %s attempts\n" "$ip" "$count"
        found=1
    fi
done <<< "$SORTED"

# If no suspicious activity
if [ "$found" -eq 0 ]; then
    echo "✅ No suspicious activity detected"
fi

echo ""












