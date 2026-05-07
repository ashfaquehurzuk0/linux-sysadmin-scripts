#!/bin/bash
# Deletes log files older than 30 days from a given directory

LOG_DIR=$1
DAYS=30

find "$LOG_DIR" -name "*.log" -mtime +"$DAYS" -delete
echo "$(date): Cleaned logs older than $DAYS days from $LOG_DIR"
