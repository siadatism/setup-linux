#!/bin/bash
# Install requirements in Ubuntu.

# Debug mode:
#     apt install xtrace
#     set -o xtrace

# Abort script at first error
set -o errexit

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
install "gitk"
install "meld"
install "tmux"
install "tree"
install "firefox"
install "yakuake"
install "net-tools"		# ifconfig
install "openssh-server"		# To Enable scp

install "make"
install "cmake"
install "g++"
install "clang"
install "gdb"
install "valgrind"

install "libboost-dev"

# set +o xtrace
exit 0
