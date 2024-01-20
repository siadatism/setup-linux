#!/bin/bash
# Modifies bashrc.

# Debug:
#     set -o xtrace

BASHRC_FILE="$HOME/.bashrc"

# Adds line in bashrc if not exists
add_line() {

	LINE="$1"
	grep -qF -- "$LINE" "$BASHRC_FILE" || echo "$LINE" >> "$BASHRC_FILE"
}

add_line "alias dc='cd'"
add_line "alias CD='cd'"
add_line "alias DC='cd'"
add_line "alias LS='ls'"
add_line "alias sl='ls'"
add_line "alias SL='ls'"
add_line "alias cp='cp -r'"
add_line "alias scp='scp -r'"
add_line "alias vim='vim -p'"
add_line "alias apt='sudo apt'"
add_line "alias apt-get='sudo apt-get'"

# TODO: Force color prompt

exit 0
