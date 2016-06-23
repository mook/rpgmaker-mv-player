#!/bin/sh

set -o errexit -o nounset

if test "${1:-}" = "install" ; then
    cp /rpgmaker-mv/rpgmaker-mv-player /usr/local/bin/rpgmaker-mv-player
    exit 0
fi

if test "$(id -u)" = "0" ; then
    printf '\033[0;1;31mPlease use the `rpgmaker-mv-player` script\033[0m\n'
    exit 1
fi

cd /rpgmaker-mv/

if ! test -f package.json ; then
    printf '\033[0;1;31mPlease from the game directory\033[0m\n'
    exit 1
fi

touch ${HOME}/.Xauthority
echo "${XAUTHDATA}" | /usr/bin/xauth nmerge -

exec ./nw "$@"
