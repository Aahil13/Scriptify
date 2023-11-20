#!/bin/sh

DIR=$(pwd)

# Check if user already exists
if id "serviceUser" >/dev/null 2>&1; then
    echo "User serviceUser already exists."
    exit 1
fi

# Install necessary packages (if needed)
sudo zypper install -y passwd openssh

# Create User
sudo useradd serviceUser -m

# Set password for new user
sudo passwd serviceUser

# Change default shell to bash
sudo usermod -s /bin/bash serviceUser

# Edit configuration file
sudo mv "$DIR"/config /etc/ssh/sshd_config

# Backup SSH configuration
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config_backup

# Copy the public key from .ssh/authorized_keys to user
sudo mkdir /home/serviceUser/.ssh
sudo cp ~/.ssh/authorized_keys /home/serviceUser/.ssh/authorized_keys
sudo chown serviceUser /home/serviceUser/.ssh
sudo chown serviceUser /home/serviceUser/.ssh/authorized_keys

# Secure permissions for the SSH directory and file
sudo chmod 700 /home/serviceUser/.ssh
sudo chmod 600 /home/serviceUser/.ssh/authorized_keys

# Restart ssh service if the configuration has changed
sudo systemctl restart sshd.service

# Check for errors during the script execution
if [ $? -ne 0 ]; then
    echo "Error: Something went wrong."
    exit 1
fi

echo "User 'serviceUser' created and configured successfully."
