#!/bin/sh

# Create User
sudo useradd testUser -m

# Set password for new user
sudo passwd testUser

# Add user to sudo group
sudo usermod -aG sudo testUser