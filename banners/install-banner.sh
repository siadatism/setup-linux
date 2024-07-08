#/usr/bin/env bash

# Installs custom banner

if [ "$#" -ne 1 ]; then
    echo "Input new banner file .."
	echo "Usage: $0 [NEW_BANNER_FILE]"
	exit 1
fi

new_banner_file=$1

if [ ! -f "$new_banner_file" ]; then
    echo "File not found! ($new_banner_file)"
	exit 2
fi

echo "New banner:"
cat "$new_banner_file"

cp -v "$new_banner_file" /etc/banner.txt
sed -i 's/Banner.*/Banner \/etc\/banner.txt/g' /etc/ssh/sshd_config

echo "Changing banner done"
