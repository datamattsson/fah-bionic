#!/bin/bash

echo "deb http://archive.ubuntu.com/ubuntu/ bionic universe" > /etc/apt/sources.list.d/universe.list
apt-get update
apt-get install -y ansible
wget -q datamattsson.io/fah-bionic-installer -O installer.yaml

echo "Run the following to start the interactive installer:"
echo
echo "    ansible-playbook installer.yaml"
echo
