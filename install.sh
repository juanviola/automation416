#!/bin/bash

apt-get update && apt-get install -y git python-pip libyaml-dev libpython2.7-dev libffi-dev
pip install --upgrade ansible
pip install markupsafe
mkdir -p /etc/ansible && echo 'localhost     ansible_connection=local' > /etc/ansible/hosts
