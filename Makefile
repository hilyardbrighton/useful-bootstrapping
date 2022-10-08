.PHONY: default
default:
	echo "No Target Specified"

.PHONY: init-ssh-server
init-ssh-server:
	sudo apt install -y openssh-server
	sudo apt install -y python3
	sudo apt install -y python3-pip
	python3 -m pip install requests
	python3 -m pip install discord
	
	sudo sh generate_ssh_key.sh
	mv mark-utility-box-1.ssh-server.key ~/.ssh/mark-utility-box-1.ssh-server.key
	mv mark-utility-box-1.ssh-server.key.pub ~/.ssh/mark-utility-box-1.ssh-server.key.pub

	python3 send_key_to_discord.py
	
	sudo sh setup_ssh_server.sh

.PHONY: init-pihole-server
init-pihole-server:
	sudo sh pihole_setup.sh

.PHONY: start-ssh-server
start-ssh-server:
	sudo systemctl start ssh

.PHONY: stop-ssh-server
stop-ssh-server:
	sudo systemctl stop ssh

