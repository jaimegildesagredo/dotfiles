setup: setup_vim
	ln -rsf ./bashrc ~/.bashrc
	ln -rsf ./gitconfig ~/.gitconfig

setup_vim:
	ln -rsf ./vimrc ~/.vimrc
	mkdir -p ~/.vim
	ln -rsf ./vim/ftplugin ~/.vim/ftplugin
