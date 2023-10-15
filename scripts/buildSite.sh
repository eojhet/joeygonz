#!/bin/bash

echo copying site files 
cp /home/ubuntu/joeygonz/proxy/joeygonz.com /etc/nginx/sites-available
rm -f /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/joeygonz.com /etc/nginx/sites-enabled
systemctl restart nginx

echo switing to user for build 
cd /home/ubuntu/joeygonz
npm install -g npm@10.2.0
npm install -g pm2