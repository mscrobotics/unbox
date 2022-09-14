#!/bin/bash
pipx_tools=(
"Tib3rius/AutoRecon"
)
for tool in "${pipx_tools[@]}"; do
        pipx install git+https://github.com/${tool}.git
done
