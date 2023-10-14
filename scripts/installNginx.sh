#!/bin/bash

apt-get update
apt-get install nginx -y
systemctl enable nginx
systemctl start nginx
cp /home/ubuntu/joeygonz/proxy/joeygonz.com /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/joeygonz.com /etc/nginx/sites-enabled
systemctl restart nginx