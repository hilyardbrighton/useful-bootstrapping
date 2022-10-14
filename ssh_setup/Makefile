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

.PHONY: setup-ssh-client-1
setup-ssh-client-1:
	printf '%s\n' Y | ssh-keygen -t rsa -b 4096 -f ./mark-utility-box-1.ssh-server.key
	
	sudo mv ./mark-utility-box-1.ssh-server.key ~/.ssh/ 
	sudo mv ./mark-utility-box-1.ssh-server.key.pub ~/.ssh/ 
	
	bash ./generate_ssh_key.sh

.PHONY: start-ssh-server
start-ssh-server:
	sudo service sshd start

.PHONY: stop-ssh-server
stop-ssh-server:
	sudo service sshd stop

