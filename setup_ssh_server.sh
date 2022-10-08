#!/usr/bin/env bash

# Edit the SSH config file to use key authorization
sudo if grep 'PasswordAuthentication' /etc/ssh/sshd_config; then sed '/PasswordAuthentication/c\PasswordAuthentication no' | tee /etc/ssh/sshd_config; else echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config; fi

# Setup SSH Server
sudo systemctl enable ssh
sudo systemctl start ssh

# Print Local IP Address
echo "Local IP: "
ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
