#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

if (( $EUID != 0 )); then
	printf "${RED}[x] sudo privileges not detected!!!\n"
	printf "This must be run as root.\nUse: ${NC}'sudo bash $0'\n"
 	exit
fi
unset GREP_OPTIONS

echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
printf "${GREEN}[+] Added repo to apt/sources"
printf "${YELLOW}[+] Updating packages..."
apt update -y
printf "${GREEN}[+] ${NC}Kali Linux Repo is now installed...\n"
