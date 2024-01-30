#!/bin/bash

sudo wget -O bootstrap_salt.sh https://bootstrap.saltproject.io
sudo sh bootstrap_salt.sh

sudo mv /tmp/minion.conf /etc/salt/minion.d/minion.conf

sudo mkdir /srv/salt /srv/salt/pillar

sudo systemctl stop salt-minion
sudo systemctl start salt-minion
