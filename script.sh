#!/usr/bin/expect -f

# # Create User
# sudo useradd --no-create-home --shell /bin/false testUser

# # Add user to sudo group
# sudo usermod -aG sudo testUser

# # Copy the private key used to create remote machine
# sudo mkdir /home/testUser/.ssh
# sudo chown -R testUser:testUser /home/testUser/.ssh
# sudo scp '/home/$USER/.ssh/authorized_keys' /home/testUser/.ssh/authorized_keys

# # Edit configuration for the sshd_config file
# scp /config testUser@54.160.160.122:/etc/ssh/sshd_config

# # Restart sshd service
# sudo systemctl restart sshd


# Set the password variable
set password "mypassword"

# Create User
spawn sudo useradd testUser
expect "password for"
send "$password\r"
interact

# Add user to sudo group
spawn sudo usermod -aG sudo testUser
expect "password for"
send "$password\r"
interact

# Copy the private key used to create remote machine
spawn scp /config testUser@54.160.160.122:/etc/ssh/sshd_config
expect "password:"
send "$password\r"
interact

# Copy the private key used to create remote machine
sudo mkdir /home/testUser/.ssh
sudo chmod 700 /home/testUser/.ssh
sudo chown -R testUser:testUser /home/testUser/.ssh
sudo scp '/home/$USER/.ssh/authorized_keys' /home/testUser/.ssh/authorized_keys

# Restart sshd service
spawn sudo systemctl restart sshd
expect "password for"
send "$password\r"
interact
