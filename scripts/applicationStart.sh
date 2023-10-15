#!/bin/bash

sudo su ubuntu
cd /home/ubuntu/joeygonz
npm run build
pm2 delete "joeygonz"
pm2 save --force
pm2 start npm --name "joeygonz" -- start
pm2 startup
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu
pm2 save --force
pm2 restart all