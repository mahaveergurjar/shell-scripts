#!/bin/bash

# Ping Monitor Script
# This script pings a specified host and logs the results.

HOST="google.com"
LOG_DIR="$HOME/log"
LOG_FILE="$LOG_DIR/ping_monitor.log"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Infinite loop to monitor ping
while true; do
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    if ping -c 1 "$HOST" &> /dev/null; then
        echo "$TIMESTAMP - $HOST is reachable." >> "$LOG_FILE"
    else
        echo "$TIMESTAMP - $HOST is not reachable." >> "$LOG_FILE"
    fi
    sleep 60  # Wait for 1 minute
done
