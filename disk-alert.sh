#!/bin/bash
# Checks disk usage and logs an alert if it goes above 80%

THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "ALERT: Disk usage is at ${USAGE}% on $(hostname)"
  echo "$(date): Disk at ${USAGE}%" >> /var/log/disk-alerts.log
else
  echo "Disk usage is fine: ${USAGE}%"
fi
