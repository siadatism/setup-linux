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

install "man-db"
install "bc"
install "mc"
install "vim"
install "htop"
install "git"
install "tmux"
install "tree"
install "sysstat"
install "openssh-server"

# Network
install "net-tools"		# ifconfig
install "iproute2"
install "tcpdump"
install "tshark"
install "nmap"

# C++ Development
install "build-essential"
install "make"
install "cmake"
install "g++"
install "clang"
install "gdb"
install "valgrind"
install "libboost-dev"

# VoIP
install "sngrep"

# Other
install "dos2unix"

# UI
#install "gitk"
#install "meld"
#install "yakuake"
#install "firefox"

# TODO
# docker

# set +o xtrace
exit 0
