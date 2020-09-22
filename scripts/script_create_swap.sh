#!/bin/sh

# Create swap
dd if=/dev/zero of=/swapfile bs=1024 count=2048k

# Create volume
mkswap /swapfile

# Active swap
swapon /swapfile

# Not clear swap when restart
echo "swapfile swap swap defaults 0 0" >> /etc/fstab

chown root:root /swapfile
chmod 0600 /swapfile

# Set swappiness
sysctl vm.swappiness=20
echo "vm.swappiness=10" >> /etc/sysctl.conf

swapon -s

