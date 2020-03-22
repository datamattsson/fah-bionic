#!/bin/bash

set -e

FOLDER=${FOLDER:-Anonymous}
TEAM=${TEAM:-0}

echo "deb http://archive.ubuntu.com/ubuntu/ bionic universe" > /etc/apt/sources.list.d/universe.list
apt-get update
apt-get install -y ansible
wget -q datamattsson.io/fah-bionic-installer -O /tmp/installer.yaml

ansible-playbook -e fah_username=${FOLDER} -e fah_team=${TEAM} /tmp/installer.yaml

echo 
echo "     Install completed access web UI at http://localhost:8080"
echo
