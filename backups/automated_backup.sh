#!/bin/bash

# Automated Backup Script
# This script backs up specified directories to a backup location.

SOURCE_DIRS=("$HOME/Documents" "$HOME/tmp")  # Directories to backup
BACKUP_DIR="$HOME/backups/$(date +%Y-%m-%d)"  # Backup destination with date

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Loop through source directories and create backups
for dir in "${SOURCE_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        # Use -C to change to the directory, avoiding leading slash warnings
        (cd "$(dirname "$dir")" && tar -czf "$BACKUP_DIR/$(basename "$dir").tar.gz" "$(basename "$dir")")
        echo "Backup of $dir completed."
    else
        echo "Warning: $dir does not exist."
    fi
done

echo "All backups completed."
