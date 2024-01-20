#/usr/bin/env bash

# Change hostname without restart
# Source: "https://askubuntu.com/a/430674" with a little change

if [ "$#" -ne 1 ]; then
    echo "Input new hostname .."
	echo "Usage: $0 MY-NEW-HOSTNAME"
	exit 1
fi

new_hostname=$1
echo "New hostname: $new_hostname"

echo $new_hostname > /proc/sys/kernel/hostname
sed -i 's/127.0.1.1.*/127.0.1.1 '"$new_hostname"'/g' /etc/hosts
echo $new_hostname > /etc/hostname

hostnamectl set-hostname $new_hostname
