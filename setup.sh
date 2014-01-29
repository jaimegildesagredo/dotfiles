#!/bin/sh

VIMDIR=$HOME/.vim
BINDIR=$HOME/bin

function install_symlink() {
    echo "Installing `basename $1` in $2..."
    ln -sf $1 $2
}

function install_directory() {
    if [[ ! -d $1 ]]; then
        echo "Installing $1..."
        mkdir -p $1
    fi
}

function install_dotfiles() {
    dotfiles=(bashrc gitconfig gvimrc hgrc vimrc gemrc)
    for dotfile in ${dotfiles[@]}; do
        install_symlink $PWD/$dotfile $HOME/.$dotfile
    done
}

function install_vimdir() {
    install_directory $VIMDIR
}

function install_vim_ftplugins() {
    ftplugin_dir=$VIMDIR/ftplugin
    install_directory $ftplugin_dir

    ftplugins=(css.vim html.vim javascript.vim python.vim ruby.vim)
    for ftplugin in ${ftplugins[@]}; do
        install_symlink $PWD/vim/ftplugin/$ftplugin $ftplugin_dir/$ftplugin
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

function update_repo() {
    git pull
}

function install_virtualenvwrapper() {
    pip install --user virtualenvwrapper
}

function install_bindir() {
    mkdir -pv $BINDIR
}

function install_vimcat() {
    git clone git@github.com:rkitover/vimpager.git
    cp vimpager/vimcat $BINDIR
    chmod 755 $BINDIR/vimcat
}

function main() {
    update_repo

    install_dotfiles
    install_vimdir
    install_vim_ftplugins
    install_vim_vundle
    install_virtualenvwrapper
    install_bindir
    install_vimcat
}

main
