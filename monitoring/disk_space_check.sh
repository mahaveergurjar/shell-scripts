#!/bin/bash

# Disk Space Check Script
# This script checks disk space and alerts if usage exceeds a threshold.

THRESHOLD=80  # Threshold percentage

# Get disk usage percentage
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Disk usage is at ${USAGE}%, exceeding the threshold of ${THRESHOLD}%."
else
    echo "Disk usage is at ${USAGE}%, within the acceptable range."
fi
