#!/bin/bash
# Modifies htop config.

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

sed -i -e 's/shadow_other_users=0/shadow_other_users=1/' \
	-e 's/show_thread_names=0/show_thread_names=1/' \
	-e 's/tree_view=0/tree_view=1/' \
	-e 's/detailed_cpu_time=0/detailed_cpu_time=1/' \
	-e 's/cpu_count_from_zero=0/cpu_count_from_zero=1/' \
	-e 's/account_guest_in_cpu_meter=0/account_guest_in_cpu_meter=1/' \
	"$HTOP_CONFIG"
echo "Changes has been done."

exit 0
