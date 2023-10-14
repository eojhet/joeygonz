#!/bin/bash

cd /home/ubuntu/joeygonz
npm run build
pm2 start npm --name "joeygonz" -- start
pm2 startup
pm2 save
pm2 restart all