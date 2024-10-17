#!/bin/bash

# Login Notification Script
# This script sends a notification when a user logs in.

USER="$1"
LOG_FILE="/var/log/login_notifications.log"

if [ -z "$USER" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Monitor login using last command
if last -n 1 "$USER" | grep "$USER"; then
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $USER logged in." >> "$LOG_FILE"
    echo "Notification sent for $USER login."
else
    echo "$USER is not logged in."
fi
