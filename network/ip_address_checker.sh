#!/bin/bash

# IP Address Checker Script
# This script checks if a given IP address is reachable.

# Prompt the user to enter an IP address
read -p "Enter the IP address to check: " IP

# Check if the user provided an input
if [ -z "$IP" ]; then
    echo "No IP address entered. Exiting."
    exit 1
fi

# Ping the specified IP address
if ping -c 1 "$IP" &> /dev/null; then
    echo "$IP is reachable."
else
    echo "$IP is not reachable."
fi
