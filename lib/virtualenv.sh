#!/bin/bash

VIRTUALENV=`which virtualenv`
VIRTUALENVOPTS="--clear"

function _is_virtualenv() {
    lsvirtualenvs | grep -q -x ${1}
    return $?
}

function workon() {
    if [[ $# != 1 ]]; then
       echo "Usage: workon virtualenv_name" >&2
       return 1
    fi

    VIRTUALENV_HOME=${WORKON_HOME}/${1}
    VIRTUALENV_ACTIVATE=${VIRTUALENV_HOME}/bin/activate

    if ! _is_virtualenv ${1}; then
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
    workon ${1}
}

function lsvirtualenvs() {
    for env_name in `ls "$WORKON_HOME"`; do
        if [[ -f ${WORKON_HOME}/${env_name}/bin/activate ]]; then
            echo $env_name
        fi
    done
}

function rmvirtualenv() {
    if [[ $# -lt 1 ]]; then
       echo "Usage: rmvirtualenv virtualenv_name [virtualenv_name [...]]" >&2
       return 1
    fi

    for env_name in "${@}"; do
        if ! _is_virtualenv ${env_name}; then
            echo "Error: Environment '${env_name}' is not a valid virtualenv." >&2
        fi

        rm -Rf ${WORKON_HOME}/${env_name}
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
complete -F _virtualenvs rmvirtualenv

