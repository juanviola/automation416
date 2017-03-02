#!/bin/bash

apt-get update && apt-get install -y git libyaml-dev libpython2.7-dev libffi-dev libssl-dev lsof
curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py && chmod +x /tmp/get-pip.py && /tmp/get-pip.py
/usr/local/bin/pip install --upgrade ansible
/usr/local/bin/pip install markupsafe
mkdir -p /etc/ansible && echo 'localhost     ansible_connection=local' > /etc/ansible/hosts
