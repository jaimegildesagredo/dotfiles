#!/bin/sh

VIMDIR=$HOME/.vim

function install_dotfiles() {
    dotfiles=(bashrc gitconfig gvimrc hgrc vimrc)
    for dotfile in ${dotfiles[@]}; do
        source=$PWD/$dotfile
        dest=$HOME/.$dotfile
        echo "Installing $dotfile in $dest..."
        ln -sf $source $dest
    done
}

function install_vimdir() {
    if [[ ! -d $VIMDIR ]]; then
        echo "Installing $VIMDIR..."
        mkdir -p $VIMDIR
    fi
}

function install_vim_ftplugins() {
    ftplugin_dir=$VIMDIR/ftplugin
    if [[ ! -d $ftplugin_dir ]]; then
        echo "Installing $ftplugin_dir..."
        mkdir -p $ftplugin_dir
    fi

    ftplugins=(css.vim html.vim javascript.vim python.vim)
    for ftplugin in ${ftplugins[@]}; do
        source=$PWD/vim/ftplugin/$ftplugin
        dest=$ftplugin_dir/$ftplugin
        echo "Installing $source in $dest..."
        ln -sf $source $dest
    done
}

# https://github.com/nestor-salceda/dotfiles/blob/master/setup
function install_vim_vundle() {
    vundle_dir=$VIMDIR/bundle/vundle
    if [[ ! -d $vundle_dir ]]; then
        git clone http://github.com/gmarik/vundle.git $vundle_dir
    else
        pushd $vundle_dir
        git pull
        popd
    fi

    vim -c "BundleInstall!" -c ":qa!"
}

install_dotfiles

install_vimdir
install_vim_ftplugins
install_vim_vundle

