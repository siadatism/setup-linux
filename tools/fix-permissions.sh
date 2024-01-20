#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Path needed."
	exit 1
fi

path="$1"

echo "Files: "
for f in $(find -L "$path" -type f); do
	echo $f;
	chown user:user $f;
	chmod 644 $f;
done

echo ""; echo "Folders: "
for f in $(find -L "$path" -type d); do
	echo $f;
	chown user:user $f;
	chmod 755 $f;
done
