#!/bin/bash
echo Cleaning files
rm -rf /home/ubuntu/joeygonz

echo updating instance
apt-get update
apt-get upgrade -y
apt-get autoremove

echo Starting unzip
apt-get install -y unzip
unzip /home/ubuntu/site.zip -d /home/ubuntu/joeygonz
chown -R ubuntu joeygonz/
echo Finishing unzip