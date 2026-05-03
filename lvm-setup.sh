#!/bin/bash
# LVM Setup Script — RHCSA Practice

# Create Physical Volume
pvcreate /dev/sdb
echo "Physical Volume created"

# Create Volume Group
vgcreate myvg /dev/sdb
echo "Volume Group created"

# Create Logical Volume (5GB)
lvcreate -L 5G -n mylv myvg
echo "Logical Volume created"

# Format with ext4
mkfs.ext4 /dev/myvg/mylv
echo "Filesystem created"

# Mount persistently
mkdir -p /mnt/mydata
echo "/dev/myvg/mylv /mnt/mydata ext4 defaults 0 0" >> /etc/fstab
mount -a
echo "LVM mounted persistently at /mnt/mydata"
