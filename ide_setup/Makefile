.PHONY: install-jetbrains-toolbox
install-jetbrains-toolbox:
	curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash

.PHONY: install-atom
install-atom:
	wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
	sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
	sudo apt-get update
	sudo apt-get install -y atom


.PHONY: install-latex
install-latex:
	sudo apt install -y texlive-latex-extra
	sudo apt install -y texstudio


