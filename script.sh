#!/bin/sh

# Create User
sudo useradd --no-create-home --shell /bin/false testUser

# Add user to sudo group
sudo usermod -aG sudo testUser

# Copy the private key used to create remote machine
sudo mkdir /home/testUser/.ssh
sudo chown -R testUser:testUser /home/testUser/.ssh
sudo scp '/home/$USER/.ssh/authorized_keys' /home/testUser/.ssh/authorized_keys

# Edit configuration for the sshd_config file
scp /config testUser@54.160.160.122:/etc/ssh/sshd_config

# Restart sshd service
sudo systemctl restart sshd
