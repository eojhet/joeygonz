#!/bin/bash

apt-get update
apt-get install nginx -y
service nginx start
cp /home/ubuntu/joeygonz/joegonz.com /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/joeygonz.com /etc/nginx/sites-enabled
service nginx restart