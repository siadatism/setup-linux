#!/bin/bash
# installs git config file.

cp -v ./gitconfig ~/.gitconfig
git config --list

exit 0
