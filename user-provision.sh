#!/bin/bash
# Creates a new user, adds them to a group, forces password change on login

USERNAME=$1
GROUP=$2

useradd -m -G "$GROUP" "$USERNAME"
echo "$USERNAME:ChangeMe@123" | chpasswd
chage -d 0 "$USERNAME"
echo "$(date): User $USERNAME created and added to $GROUP" >> /var/log/user-provision.log
echo "Done. User $USERNAME created."
