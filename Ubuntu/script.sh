#!/bin/sh

DIR=$(pwd)

# Create User
sudo useradd serviceUser -m

# Set password for new user
sudo passwd serviceUser

# Add user to sudo group
sudo usermod -aG sudo serviceUser

# Change default shell to bash
sudo usermod -s /bin/bash serviceUser

# Edit configuration file
sudo mv "$DIR"/config /etc/ssh/sshd_config

# Copy the private key from .ssh/authorized_keys to user
sudo mkdir /home/serviceUser/.ssh
sudo chown serviceUser:serviceUser -R /home/serviceUser/.ssh
sudo cp ~/.ssh/authorized_keys /home/serviceUser/.ssh/authorized_keys
sudo chown serviceUser:serviceUser -R /home/serviceUser/.ssh/authorized_keys

# Restart ssh service
sudo systemctl restart ssh