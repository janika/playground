#!/usr/bin/env bash
#Javascript
nodeVersion=v0.12.0
nodeVersionFolder=node-$nodeVersion

if [ ! -h /usr/bin/node ] && [ ! -f /usr/bin/node ]; then
	echo "Installing node $nodeVersion from source"
	cd
	wget -nv http://nodejs.org/dist/$nodeVersion/$nodeVersionFolder.tar.gz
	tar -zxf $nodeVersionFolder.tar.gz
	cd $nodeVersionFolder
	./configure && make && sudo make install
fi