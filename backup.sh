#!/bin/bash
# Creates a timestamped compressed backup of a directory

SOURCE=$1
DEST="/backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DEST"
tar -czf "$DEST/backup_${TIMESTAMP}.tar.gz" "$SOURCE"
echo "$(date): Backup of $SOURCE saved to $DEST/backup_${TIMESTAMP}.tar.gz" >> /var/log/backup.log
echo "Backup complete."
