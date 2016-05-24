#!/bin/bash

sudo apt-get install build-essential curl git python-setuptools ruby


ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/linuxbrew/go/install)"

export HOMEBREW_BUILD_FROM_SOURCE=1
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"


brew install ansible

if [ $? -ne 0 ]; then
    exit 1
fi


cd ansible

ansible-playbook -i hosts site.yml
