#!/bin/bash
# User and Group Management Script — RHCSA Practice

# Create a group
groupadd devteam

# Create a user and add to group
useradd -m -G devteam ashfaque
passwd ashfaque

# Set ACL permissions on a directory
mkdir /data/projects
setfacl -m u:ashfaque:rwx /data/projects
setfacl -m g:devteam:rx /data/projects

# Verify ACL
getfacl /data/projects

echo "User and ACL setup complete"
