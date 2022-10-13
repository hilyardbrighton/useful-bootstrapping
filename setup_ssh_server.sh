#!/usr/bin/env bash

# Edit the SSH config file to use key authorization
declare -a arr=("PasswordAuthentication" "ChallengeResponseAuthentication" "UsePAM")

for i in "${arr[@]}"
do

	if grep "$i yes" /etc/ssh/sshd_config; then 
		sed "/$i yes/c\\$i no\\" /etc/ssh/sshd_config | sudo tee /etc/ssh/sshd_config
	elif grep "$i no" /etc/ssh/sshd_config; then
		sed "/$i no/c\\$i no\\" /etc/ssh/sshd_config | sudo tee /etc/ssh/sshd_config
	else 
		sudo echo "$i no" >> /etc/ssh/sshd_config
	fi
done

# Setup SSH Server
sudo service sshd start

# Print Local IP Address
echo "Local IP: "
ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
