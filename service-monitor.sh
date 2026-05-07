#!/bin/bash
# Checks if a service is running. Restarts it if not.
# Usage: ./service-monitor.sh nginx

SERVICE=$1

if ! systemctl is-active --quiet "$SERVICE"; then
  echo "$SERVICE is down. Restarting..."
  systemctl restart "$SERVICE"
  echo "$(date): $SERVICE was restarted" >> /var/log/service-monitor.log
else
  echo "$SERVICE is running normally."
fi
