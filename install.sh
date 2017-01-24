#!/bin/bash

apt-get update && apt-get install -y git libyaml-dev libpython2.7-dev libffi-dev
wget -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py && chmod +x /tmp/get-pip.py && /tmp/get-pip.py
pip install --upgrade ansible
pip install markupsafe
mkdir -p /etc/ansible && echo 'localhost     ansible_connection=local' > /etc/ansible/hosts
