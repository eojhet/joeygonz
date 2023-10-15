#!/bin/bash
echo Cleaning files $(date) $(date) >> /home/ubuntu/logs
rm -rf /home/ubuntu/joeygonz

echo updating instance $(date) >> /home/ubuntu/logs
apt-get update
apt-get upgrade -y

echo Starting unzip $(date) >> /home/ubuntu/logs
apt-get install -y unzip
unzip /home/ubuntu/site.zip -d /home/ubuntu/joeygonz
echo Finishing unzip