VIM_DIR=~/.vim
VIM_VUNDLE_DIR=$(VIM_DIR)/bundle/Vundle.vim

setup:
	@echo "Run setup commands by hand"

setup_zsh:
	ln -sf $(PWD)/zshrc ~/.zshrc

setup_bash:
	ln -sf $(PWD)/bashrc ~/.bashrc

setup_git:
	ln -sf $(PWD)/gitconfig ~/.gitconfig

setup_vim: setup_vim_dotfiles setup_vim_plugins

setup_vim_dotfiles:
	ln -sf $(PWD)/vimrc ~/.vimrc
	mkdir -p $(VIM_DIR)
	ln -sf $(PWD)/vim/ftplugin $(VIM_DIR)

setup_vim_plugins: $(VIM_VUNDLE_DIR)
	vim +PluginClean +PluginInstall +qall

$(VIM_VUNDLE_DIR):
	git clone https://github.com/gmarik/vundle.git $(VIM_VUNDLE_DIR)

