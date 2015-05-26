#!/usr/bin/env bash

#Node and npm
# nodeVersion=v0.12.4
# nodeVersionFolder=node-$nodeVersion

# if [ ! -h /usr/bin/node ] && [ ! -f /usr/bin/node ]; then
#   echo "Installing node $nodeVersion from source"
#   cd
#   wget -nv http://nodejs.org/dist/$nodeVersion/$nodeVersionFolder.tar.gz
#   tar -zxf $nodeVersionFolder.tar.gz
#   cd $nodeVersionFolder
#   ./configure && make && sudo make install
# fi
if [ ! -h /usr/bin/node ] && [ ! -f /usr/bin/node ]; then
	curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
	sudo apt-get install -y nodejs
fi