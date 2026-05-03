#!/bin/bash
# Firewall Rules — RHCSA Practice

# Allow HTTP and HTTPS
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https

# Allow custom port
firewall-cmd --permanent --add-port=8080/tcp

# Reload to apply
firewall-cmd --reload

echo "Firewall rules applied"
firewall-cmd --list-all
