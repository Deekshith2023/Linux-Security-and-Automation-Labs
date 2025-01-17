#!/bin/bash
# Backup Automation Script

SOURCE_DIR="/var/www/html"
BACKUP_DIR="/backups"
TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

echo "Starting backup of $SOURCE_DIR to $BACKUP_FILE..."

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Perform the backup
tar -czf $BACKUP_FILE $SOURCE_DIR

# Verify backup
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
else
    echo "Backup failed!" >&2
fi
