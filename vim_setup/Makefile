.PHONY: setup-vim
setup-vim:
	sudo apt install -y vim
	sudo apt install -y build-essential cmake vim-nox python3-dev
	sudo apt install -y mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm

	cp bin/.vimrc ~/.vimrc 
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || true

	vim +PluginInstall +qall

	bash ycm_install.sh

	vim +'source ~/.vimrc' +qall
