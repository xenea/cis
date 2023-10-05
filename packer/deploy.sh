#!/bin/bash
sudo apt-get install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible -y
sudo apt-get install git
cd /home/ubuntu
ansible-playbook playbook.yml