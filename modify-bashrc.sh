#!/bin/bash
# Modifies bashrc.

# Debug:
# set -x

BASHRC_FILE="$HOME/.bashrc"

# Adds line in bashrc if not exists
add_line() {

	LINE="$1"
	grep -qF -- "$LINE" "$BASHRC_FILE" || echo "$LINE" >> "$BASHRC_FILE"
}

add_line "alias LS='ls'"
add_line "alias sl='ls'"
add_line "alias SL='ls'"

exit 0
