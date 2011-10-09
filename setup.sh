#!/bin/sh


# https://github.com/nestor-salceda/dotfiles/blob/master/setup
function install_or_upgrade_vundle() {
    vundle_dir=./.vim/bundle/vundle
    if [[ ! -d $vundle_dir ]]; then
        git clone http://github.com/gmarik/vundle.git $vundle_dir
    else
        pushd $vundle_dir
        git pull
        popd
    fi
}

