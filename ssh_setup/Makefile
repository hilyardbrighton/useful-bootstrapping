.PHONY: default
default:
	echo "No Target Specified"

# This must be run on Server. Sets up initial ssh server. 
# Defaults to password auth server.
.PHONY: setup-init-ssh-server
setup-init-ssh-server:
	sudo apt install -y openssh-server
	sudo apt install -y python3
	sudo apt install -y python3-pip
	sudo systemctl enable ssh
	sudo systemctl start ssh

# This must be run on Server. Sets up key auth server.
.PHONY: setup-key-auth-ssh-server
setup-key-auth-ssh-server:
	sudo systemctl stop ssh
	sudo cp ./config/sshd_config.key_auth /etc/ssh/sshd_config	
	sudo systemctl start ssh

# This must be run on Server. Sets up password auth server.
.PHONY: setup-password-auth-ssh-server
setup-password-auth-ssh-server:
	sudo systemctl stop ssh
	sudo cp ./config/sshd_config.password_auth /etc/ssh/sshd_config
	sudo systemctl start ssh

# This must be run on Client.
.PHONY: setup-ssh-key-auth-client
setup-ssh-key-auth-client:
	printf '%s\n' Y | ssh-keygen -t rsa -b 4096 -f ./mark-utility-box-1.ssh-server.key
	sudo mv ./mark-utility-box-1.ssh-server.key ~/.ssh/ 
	sudo mv ./mark-utility-box-1.ssh-server.key.pub ~/.ssh/ 
	bash ./generate_ssh_key.sh

# Utility Make Processes -----------------------------------------------------------------
.PHONY: start-ssh-server
start-ssh-server:
	sudo systemctl start ssh

.PHONY: stop-ssh-server
stop-ssh-server:
	sudo systemctl stop ssh

.PHONY: restart-ssh-server
restart-ssh-server:
	sudo systemctl restart ssh

.PHONY: enable-ssh-server
enable-ssh-server:
	# This makes ssh start on startup
	sudo systemctl enable ssh

.PHONY: disable-ssh-server
disable-ssh-server:
	# This makes ssh not start on startup
	sudo systemctl disable ssh

.PHONY: remove-auth-keys
remove-auth-keys:
	sudo rm ~/.ssh/authorized_keys
