setup: 
	@echo "Run setup commands by hand"


setup_zsh:
	ln -sf $(PWD)/zshrc ~/.zshrc

setup_bash:
	ln -sf $(PWD)/bashrc ~/.bashrc

setup_git:
	ln -sf $(PWD)/gitconfig ~/.gitconfig

setup_vim:
	ln -sf $(PWD)/vimrc ~/.vimrc
	mkdir -p $(PWD)/.vim
	ln -sf $(PWD)/vim/ftplugin ~/.vim/ftplugin
