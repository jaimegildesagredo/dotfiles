#!/bin/bash

VIRTUALENV=`which virtualenv`
VIRTUALENVOPTS="--clear --no-site-packages"

function workon() {
    VIRTUALENV_NAME=${1:-`basename $PWD`}
    VIRTUALENV_HOME=$WORKON_HOME/$VIRTUALENV_NAME

    if [[ ! -d $VIRTUALENV_HOME ]]; then
        mkvirtualenv $VIRTUALENV_NAME
    fi

    source $VIRTUALENV_HOME/bin/activate
}

function mkvirtualenv() {
    VIRTUALENV_NAME=${1:-`basename $PWD`}
    $VIRTUALENV $VIRTUALENVOPTS $WORKON_HOME/$VIRTUALENV_NAME
}

function lsvirtualenvs() {
    for virtualenv in `ls "$WORKON_HOME"`; do
        if [[ -d "$WORKON_HOME/$virtualenv" ]]; then
            echo $virtualenv
        fi
    done
}

