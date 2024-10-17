#!/bin/bash

# CPU and Memory Usage Monitoring Script
# This script logs CPU and memory usage every minute.

LOG_FILE="$HOME/cpu_memory_usage.log"

# Create log file if it doesn't exist
touch "$LOG_FILE"

# Infinite loop to log usage every minute
while true; do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # echo "$TIMESTAMP - CPU Usage: $CPU_USAGE%, Memory Usage: $MEM_USAGE%"
    echo "$TIMESTAMP - CPU Usage: $CPU_USAGE%, Memory Usage: $MEM_USAGE%" >> "$LOG_FILE"
    sleep 60  # Wait for 1 minute
done
