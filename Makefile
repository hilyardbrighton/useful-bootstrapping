.PHONY: default
default:
	echo "No Target Specified"

.PHONY: setup-ssh-server-1
setup-ssh-server-1:
	sudo apt install -y openssh-server
	sudo apt install -y python3
	sudo apt install -y python3-pip

	sudo systemctl enable ssh
	sudo systemctl start ssh


.PHONY: init-pihole-server
init-pihole-server:
	sudo bash pihole_setup.sh

.PHONY: start-ssh-server
start-ssh-server:
	sudo service sshd start

.PHONY: stop-ssh-server
stop-ssh-server:
	sudo service sshd stop

