#!/bin/bash

VIRTUALENV=`which virtualenv`
VIRTUALENVOPTS="--clear --no-site-packages"

function workon() {
    if [[ $# != 1 ]]; then
       echo "Usage: workon virtualenv_name" >&2
       return 1
    fi

    VIRTUALENV_HOME=${WORKON_HOME}/${1}
    VIRTUALENV_ACTIVATE=${VIRTUALENV_HOME}/bin/activate

    if ! [[ -d ${VIRTUALENV_HOME} && -f ${VIRTUALENV_ACTIVATE} ]]; then
        echo "Error: Environment '${1}' is not a valid virtualenv." >&2
        return 1
    fi

    source ${VIRTUALENV_ACTIVATE}
}

function mkvirtualenv() {
    if [[ $# != 1 ]]; then
       echo "Usage: mkvirtualenv virtualenv_name" >&2
       return 1
    fi

    ${VIRTUALENV} ${VIRTUALENVOPTS} ${WORKON_HOME}/${1}
}

function lsvirtualenvs() {
    for virtualenv in `ls "$WORKON_HOME"`; do
        if [[ -d "$WORKON_HOME/$virtualenv" ]]; then
            echo $virtualenv
        fi
    done
}

function _virtualenvs() {
    COMPREPLY=($(compgen -W "`lsvirtualenvs`" -- "${COMP_WORDS[COMP_CWORD]}"))
}

function _default_virtualenv() {
    COMPREPLY=($(compgen -W "`basename $PWD`"))
}

complete -o nospace -F _virtualenvs workon
complete -o nospace -F _default_virtualenv mkvirtualenv

