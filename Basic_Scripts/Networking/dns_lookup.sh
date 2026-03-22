#!/bin/bash

<< Description
	 This script resolves a domain name to its IP address
	 using the 'dig' command.
	 It helps DevOps engineers and system administrators
	 verify DNS resolution during network troubleshooting.
Description

echo "========================================="
echo "            DNS Lookup Utility"
echo "========================================="

# Check argument
if [ $# -eq 0 ]; then
    echo "Error: No domain provided."
    echo "Usage: $0 <domain>"
    exit 1
fi

domain=$1

# Check if dig command exists
if ! command -v dig &> /dev/null
then
    echo "Error: 'dig' command not found."
    echo "Install package: dnsutils"
    exit 1
fi

echo
echo "Resolving domain: $domain"
echo "-----------------------------------------"

ip_addresses=$(dig +short "$domain")

# Check result
if [ -z "$ip_addresses" ]; then
    echo "Failure: Unable to resolve domain."
else
    echo "Success: Domain resolved."
    echo
    echo "IP Address(es):"
    echo "$ip_addresses"
fi

echo "-----------------------------------------"
echo "DNS lookup completed."
