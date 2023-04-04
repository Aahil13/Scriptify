#!/bin/sh

DIR=$(pwd)

# Create User
sudo useradd testUser -m

# Set password for new user
sudo passwd testUser

# Add user to sudo group
sudo usermod -aG sudo testUser

# Edit configuration file
sudo mv $DIR/config /etc/ssh/sshd_config