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

	mkdir -p ~/.ssh/
	mkdir -p ~/.ssh/authorized_keys/

	chmod 777 ~/.ssh
	chmod 777 ~/.ssh/authorized_keys

	sudo sh generate_ssh_key.sh
	mv -f mark-utility-box-1.ssh-server.key ~/.ssh/authorized_keys/mark-utility-box-1.ssh-server.key
	mv -f mark-utility-box-1.ssh-server.key.pub ~/.ssh/authorized_keys/mark-utility-box-1.ssh-server.key.pub

	python3 send_key_to_discord.py
	rm -f ~/.ssh/authorized_keys/mark-utility-box-1.ssh-server.key.pub
	
	chmod 700 ~/.ssh
	chmod 600 ~/.ssh/authorized_keys

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

