#!/bin/bash

# Change IP address assigned by netplan

echo "Changing IP results in ssh disconnection .."

cp -v 00-installer-config.yaml /etc/netplan/00-installer-config.yaml
netplan apply
