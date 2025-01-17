#!/bin/bash
# Secure SSH Configuration Script

echo "Securing SSH Configuration..."

# Change SSH port
sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

# Disable root login
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# Enforce key-based authentication
sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# Apply changes
systemctl restart sshd

echo "SSH has been secured. Please use port 2222 to connect."
