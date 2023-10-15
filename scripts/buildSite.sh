#!/bin/bash

cp /home/ubuntu/joeygonz/proxy/joeygonz.com /etc/nginx/sites-available
rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/joeygonz.com /etc/nginx/sites-enabled
systemctl restart nginx

sudo su ubuntu
cd /home/ubuntu/joeygonz
sudo npm install -g npm@10.2.0
npm install
sudo npm install -g pm2