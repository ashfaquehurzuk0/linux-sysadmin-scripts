# Linux System Administration Scripts — RHCSA Level

## Overview
Hands-on Linux administration practice at RHCSA exam level.
Covers user management, storage, networking, security, and automation
on Red Hat Enterprise Linux (RHEL).

## Topics Covered
| Topic | Tools Used |
|-------|-----------|
| User & Group Management | useradd, groupadd, passwd, chmod, chown |
| Access Control Lists | setfacl, getfacl |
| Storage Management | fdisk, parted, mkfs, mount, /etc/fstab |
| Logical Volume Management | pvcreate, vgcreate, lvcreate, lvextend |
| System Services | systemctl, journalctl |
| Firewall | firewall-cmd (firewalld) |
| SELinux | restorecon, setsebool, semanage |
| Network Configuration | nmcli, hostnamectl |
| Job Scheduling | cron, crontab, at |
| SSH | key-based authentication, SSH config |
| NFS & AutoFS | NFS server/client, automounting |
| System Recovery | GRUB troubleshooting, emergency mode |

## Scripts

### user-management.sh
Creates a user, assigns to a group, and sets ACL permissions on a directory.

### lvm-setup.sh
Creates a Physical Volume, Volume Group, and Logical Volume — formats and mounts it persistently.

### firewall-rules.sh
Opens specific ports using firewalld and makes rules persistent across reboots.

### cron-backup.sh
Automates a backup task using cron with timestamp-based file naming.

## Key Learnings
- How SELinux contexts and booleans control service access
- How LVM abstracts physical storage for flexible management
- How firewalld zones and rules control network access
- How AutoFS mounts NFS shares on demand without manual intervention
- How GRUB recovery restores access to a locked system

## Author
**Ashfaque Hurzuk** — Cloud & DevOps Engineer | Navi Mumbai
[LinkedIn](https://www.linkedin.com/in/ashfaque-hurzuk-a2b8a637a) | [GitHub](https://github.com/ashfaquehurzuk0)
