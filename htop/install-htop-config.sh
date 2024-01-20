#!/bin/bash
# Installs htop config.

HTOP_CONFIG_PATH="$HOME/.config/htop"

if [ ! -d $HTOP_CONFIG_PATH ]
then
	mkdir -pv $HTOP_CONFIG_PATH
fi

cp -v htoprc "$HTOP_CONFIG_PATH"

exit 0
