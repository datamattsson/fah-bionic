#!/bin/bash

FOLDER=${FOLDER:-Anonymous}
TEAM=${TEAM:-0}
USE_GPU=${USE_GPU:-false}

echo "deb http://archive.ubuntu.com/ubuntu/ bionic universe" > /etc/apt/sources.list.d/universe.list
apt-get update
apt-get install -y ansible
wget -q datamattsson.io/fah-bionic-installer -O /tmp/installer.yaml

ansible-playbook -e fah_username=${FOLDER} -e fah_team=${TEAM} -e fah_gpu=${USE_GPU} /tmp/installer.yaml
