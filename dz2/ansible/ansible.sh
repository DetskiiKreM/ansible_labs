#!/bin/bash
echo "Start playbook_dz2... "
cd /root/ansible_labs/dz2/ansible
ansible-playbook dz2_playbook.yml -i inventory/dev/hosts -c local "$@"
echo "Done"
