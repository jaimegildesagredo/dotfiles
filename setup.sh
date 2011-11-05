#!/bin/sh

function install_dotfiles() {
    dotfiles=(bashrc gitconfig gvimrc hgrc vimrc)
    for dotfile in ${dotfiles[@]}; do
        source=$PWD/$dotfile
        dest=$HOME/.$dotfile
        echo "Installing $dotfile in $dest ..."
        ln -sf $source $dest
    done
}

# https://github.com/nestor-salceda/dotfiles/blob/master/setup
function install_or_upgrade_vundle() {
    vundle_dir=$HOME/.vim/bundle/vundle
    if [[ ! -d $vundle_dir ]]; then
        git clone http://github.com/gmarik/vundle.git $vundle_dir
    else
        pushd $vundle_dir
        git pull
        popd
    fi
}

