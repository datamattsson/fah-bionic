#!/bin/bash

echo "deb http://archive.ubuntu.com/ubuntu/ bionic universe" > /etc/apt/sources.list.d/universe.list
apt-get update
apt-get install -y ansible
wget -q datamattsson.io/fah-bionic-installer -O installer.yaml
ansible-playbook installer.yaml

echo "Access the FAH client web UI from http://localhost:8080"
