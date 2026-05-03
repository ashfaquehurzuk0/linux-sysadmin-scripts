#!/bin/bash
# Automated Backup using Cron — RHCSA Practice

BACKUP_DIR="/backup"
SOURCE_DIR="/data"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR
echo "Backup completed: backup_$TIMESTAMP.tar.gz"

# To schedule this script, add to crontab:
# crontab -e
# 0 2 * * * /path/to/cron-backup.sh
