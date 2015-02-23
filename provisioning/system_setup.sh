#!/usr/bin/env bash

echo "Set locale"
echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale
echo 'LC_ALL="en_US.UTF-8"' >> /etc/default/locale
locale-gen en_US.UTF-8
dpkg-reconfigure locales

echo "Get updates"
apt-get update -y > /dev/null

echo "Installing Git"
apt-get install git -y > /dev/null

echo "Installing Nginx"
apt-get install nginx -y > /dev/null

echo "Install nfs prerequisites"
apt-get install nfs-common portmap -y > /dev/null

echo "System setup complete"