.PHONY: default
default:
	echo "No Target Specified"

.PHONY: init-ssh-server
init-ssh-server:
	sudo sh ssh_setup.sh

.PHONY: init-pihole-server
init-pihole-server:
	sudo sh pihole_setup.sh

.PHONY: start-ssh-server
start-ssh-server:
	sudo systemctl start ssh

.PHONY: stop-ssh-server
stop-ssh-server:
	sudo systemctl stop ssh

