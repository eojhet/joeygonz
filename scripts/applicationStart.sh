#!/bin/bash

cd /home/ubuntu/joeygonz
npm run build
pm2 delete "joeygonz"
pm2 save --force
pm2 start npm --name "joeygonz" -- start
pm2 startup
pm2 save --force
pm2 restart all