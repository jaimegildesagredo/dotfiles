setup: 
	@echo "Run setup commands by hand"


setup_zsh:
	ln -sf $(PWD)/zshrc ~/.zshrc

setup_bash:
	ln -rsf ./bashrc ~/.bashrc

setup_git:
	ln -rsf ./gitconfig ~/.gitconfig

setup_vim:
	ln -rsf ./vimrc ~/.vimrc
	mkdir -p ~/.vim
	ln -rsf ./vim/ftplugin ~/.vim/ftplugin
