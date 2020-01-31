#!/bin/bash
# Installs htop config.

# Debug:
# set -x

HTOP_CONFIG="$HOME/.config/htop/htoprc"
HTOP_BACKUP_CONFIG="$HOME/.config/htop/htoprc.backup"

if [ -f $HTOP_BACKUP_CONFIG ]
then
	echo "Backup exists."
else
	echo "Making backup first.."
	cp -v $HTOP_CONFIG $HTOP_BACKUP_CONFIG
fi

cp -v htoprc "$HTOP_CONFIG"

exit 0
