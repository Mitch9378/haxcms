#!/bin/bash
if [ -d "/home/vagrant/.config" ]; then
  sudo chmod 755 /home/vagrant/.config
fi
# set some defaults for publishing on the box
cat >> /home/vagrant/.ssh/config <<EOL

host github.com
  HostName github.com
  IdentityFile /var/www/html/_config/.ssh/haxyourweb
  User git

EOL
