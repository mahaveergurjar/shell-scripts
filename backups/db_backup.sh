#!/bin/bash

# Database Backup Script
# This script backs up a MySQL database.

DB_USER="your_username"
DB_PASS="your_password"
DB_NAME="your_database"
BACKUP_DIR="$HOME/backups/db"
DATE=$(date +%Y-%m-%d)

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Perform the backup using mysqldump
mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/$DB_NAME-$DATE.sql"

if [ $? -eq 0 ]; then
    echo "Database backup completed: $BACKUP_DIR/$DB_NAME-$DATE.sql"
else
    echo "Error: Database backup failed."
fi
