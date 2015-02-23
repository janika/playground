#Javascript
if [ ! -h /usr/bin/node ] && [ ! -f /usr/bin/node ]; then
	echo "Install node and npm"
	#https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#debian-and-ubuntu-based-linux-distributions
	curl -sL https://deb.nodesource.com/setup | sudo bash -
	sudo apt-get install nodejs -y > /dev/null
fi

echo "Upgrade npm"
bash --login
sudo rm -rf ~/.npm
sudo npm install -g npm
sudo npm cache clean
bash --login

echo "install http-server"
sudo npm install -g http-server  > /dev/null