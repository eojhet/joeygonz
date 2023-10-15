#!/bin/bash

echo updating instance
apt-get update
apt-get upgrade -y

echo Cleaning files
rm -rf /home/ubuntu/joeygonz

echo Starting unzip
apt-get install -y unzip
unzip /home/ubuntu/site.zip -d /home/ubuntu/joeygonz
echo Finishing unzip