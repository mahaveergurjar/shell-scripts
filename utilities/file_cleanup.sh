#!/bin/bash

TARGET_DIR="/path/to/temp"  # Replace with your target directory

# Remove files older than 7 days
find "$TARGET_DIR" -type f -mtime +7 -exec rm {} \;

echo "Cleaned up files older than 7 days in $TARGET_DIR."
