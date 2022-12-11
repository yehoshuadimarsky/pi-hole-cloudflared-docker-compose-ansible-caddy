#!/bin/bash

# setup Python and Ansible

VENV_DIR=".venv"
ANSIBLE_VERSION="7.1.0"
ANSIBLE_CORE_VER="2.14.1"

# create venv
python3 -m venv $VENV_DIR --clear --upgrade-deps 
source $VENV_DIR/bin/activate

# install ansible
pip install ansible==$ANSIBLE_VERSION ansible-core==$ANSIBLE_CORE_VER

# install ansible extras
ansible-galaxy role install artis3n.tailscale,3.4.0
ansible-galaxy collection install ansible.posix:1.4 community.docker:3.3.2

# run
ansible-playbook playbook.yml --inventory hosts.yml
