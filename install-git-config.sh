#!/bin/bash
# installs git config file.

set -e

cp -v ./gitconfig ~/.gitconfig
git config --list

exit 0
