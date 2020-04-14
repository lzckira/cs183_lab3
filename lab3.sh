#!/bin/bash

echo "1. Find all files in /bin, /sbin, /usr/bin, and /usr/sbin that are setuid and owned by root."
find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000
read -p "Hit any key to continue."

echo "2. Find all files across the entire system that have setuid or setgid enabled (regardless of owner)."
find / -perm -4000 -o -perm -2000
read -p "Hit any key to continue."

echo "3. Find all files in /var that have changed in the last 20 minutes."
find /var -cmin -20 
read -p "Hit any key to continue."

echo "4. Find all files in /var that are regular files of zero length."
find /var -type f -size 0 
read -p "Hit any key to continue."

echo "5. Find all files in /dev that are not regular files and also not directories. The same command should print a listing that includes permissions and modification times (at a minimum) for these files."
find /dev -not -type d -a -not -type f -printf '%p %M %t \n'
read -p "Hit any key to continue."

echo "6. Find all directories in /home that are not owned by root. In the same command, change their permissions to ensure they have 711 (-rwx--x--x) permissions."
find /home -type d -not -user root -exec chmod 711 {} \;
read -p "Hit any key to continue."

echo "7. Find all regular files in /home that are not owned by root. In the same command, change their permissions to ensure they have 755 (-rwxr-xr-x) permissions."
find /home -type f -not -user root -exec chmod 755 {} \;
read -p "Hit any key to continue."

echo "8. Find all files (of all types) in /etc that have changed in the last 5 days. "
find /etc -ctime 5
read -p "Hit any key to continue."








