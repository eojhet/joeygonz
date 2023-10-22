#!/bin/bash

echo switching to user for site startup
sudo -i -u ubuntu bash << EOF
sudo chown -R ubuntu /home/ubuntu/joeygonz/
cd /home/ubuntu/joeygonz
npm install
pm2 stop all
npm run build
pm2 start npm --name "joeygonz" -- start
pm2 startup
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu
pm2 save --force
pm2 restart all
EOF