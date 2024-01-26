#!/bin/bash

# source: https://github.com/saltstack/salt-bootstrap

sudo wget -O bootstrap_salt.sh https://bootstrap.saltproject.io
sudo sh bootstrap_salt.sh

sudo touch /etc/salt/minion.d/minion.conf

sudo sh -c "echo 'master: 127.0.0.1' > /etc/salt/minion.d/minion.conf"
sudo sh -c "echo 'user: vagrant' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo 'file_client: local' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo 'file_roots:' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo '  base:' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo '    - /srv/salt' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo 'pillar_roots:' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo '  base:' >> /etc/salt/minion.d/minion.conf"
sudo sh -c "echo '    - /srv/salt/pillar' >> /etc/salt/minion.d/minion.conf"

sudo mkdir /srv/salt/
sudo mkdir /srv/salt/pillar/

sudo systemctl stop salt-minion
sudo systemctl start salt-minion
