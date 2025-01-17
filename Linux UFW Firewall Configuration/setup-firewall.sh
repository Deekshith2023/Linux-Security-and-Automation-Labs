#!/bin/bash

# Update package list
sudo apt update

# Install UFW if not already installed
sudo apt install -y ufw

# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh

# Allow HTTP and HTTPS
sudo ufw allow http
sudo ufw allow https

# Enable the firewall
sudo ufw enable

# Display firewall status
sudo ufw status verbose
