#!/bin/sh

# Create User
sudo useradd testUser -p testUser -m

# Add user to sudo group
sudo usermod -aG sudo testUser