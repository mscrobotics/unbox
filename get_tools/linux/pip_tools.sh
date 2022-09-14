#!/bin/bash
python3 -m pip install --upgrade
pip_tools=(
"bloodhound"
"pipx"
"pyinstaller" 
"pynput==1.6.8"
)
for tool in "${pip_tools[@]}"; do
	pip3 install ${tool}
done
source ~/.bashrc
