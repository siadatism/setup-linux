#!/bin/bash
# Install requirements in Ubuntu.

# To enable debugging uncomment these to see running commands:
# apt install xtrace
# set -o xtrace

set -e

if [ "$EUID" -ne 0 ]
	then echo "run needs root access"
	exit 1
fi

cecho() {
	RED="\033[0;31m"
	GREEN="\033[0;32m"
	YELLOW="\033[1;33m"
	NC="\033[0m" # No Color

	printf "${!1}${2}${NC}\n"
}

install() {
	package_name=$1
	cecho "GREEN" "Checking package $package_name"
	if ! dpkg -s $package_name >/dev/null 2>&1; then
		cecho "YELLOW" "\tNot installed, installing.."
  		sudo apt --yes install $package_name
	else
		cecho "GREEN" "\tAlready installed."
	fi
}

install "vim"
install "htop"
install "git"
install "meld"

install "make"
install "cmake"

install "g++"
install "clang"
install "gdb"

# set +o xtrace
exit 0