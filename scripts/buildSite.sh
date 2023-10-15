#!/bin/bash

cp /home/ubuntu/joeygonz/proxy/joeygonz.com /etc/nginx/sites-available
rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/joeygonz.com /etc/nginx/sites-enabled
systemctl restart nginx

cd /home/ubuntu/joeygonz
npm install
npm install pm2 -g