#!/bin/bash

SSHUSER=pi
HOST=marinepi.local
if [ "$1" != "" ]; then
  HOST=$1
fi

export ANSIBLE_HOST_KEY_CHECKING=false

ansible-playbook -i $HOST, playbooks/setup.yml -e ansible_ssh_user=$SSHUSER
