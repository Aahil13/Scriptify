#!/bin/sh

# Create User
sudo useradd testUser

# Add user to sudo group
sudo usermod -aG sudo testUser

# Copy the private key used to create remote machine
scp /config testUser@54.160.160.122:/etc/ssh/sshd_config

# Edit sshd_config file
sudo mv /config /etc/ssh/sshd_config

# Restart sshd service
sudo systemctl restart sshd
