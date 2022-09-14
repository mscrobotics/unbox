#!/bin/bash
#!/bin/bash
dest_loc=$1
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

tabs=(
# SSH Key
"https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
"https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account"

# Automount Drives
"https://askubuntu.com/questions/164926/how-to-make-partitions-mount-at-startup"
)


open_tabs () {
	LEN=${#tabs[@]}
	for ((tab = 0; tab < $LEN; ++tab)); do
		xdg-open $tabs
		printf "${GREEN}[$((tab+1))/${LEN}]\n"
	done
}

open_tabs
