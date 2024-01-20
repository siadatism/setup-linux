#~/bin/bash

mv /etc/apt/sources.list /etc/apt/sources.list-backup
cp ./sources.list /etc/apt/sources.list

apt update
