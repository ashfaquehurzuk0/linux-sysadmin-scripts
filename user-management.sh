#!/bin/bash
# User and Group Management — RHCSA Practice

groupadd devteam
useradd -m -G devteam ashfaque
echo "User created and added to devteam"

mkdir -p /data/projects
setfacl -m u:ashfaque:rwx /data/projects
setfacl -m g:devteam:rx /data/projects
getfacl /data/projects
echo "ACL permissions set on /data/projects"
