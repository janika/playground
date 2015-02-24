#!/usr/bin/env bash

#Installing mongodb according to http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
if [ ! -h /usr/bin/mongo ] && [ ! -f /usr/bin/mongo ]; then
  echo "install mongodb"
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
  sudo apt-get update -y > /dev/null
  sudo apt-get install -y mongodb-org > /dev/null
fi