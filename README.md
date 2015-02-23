#Playground

Personal Ubuntu box for trying things out. The vagrant machine is going to use your ssh key to get stuff from github, so you need to make sure that you have a private key that is being used.

The playground includes 
  * nginx
  * v0.12.0 node from source

### Prerequisites

* make sure **Intel Virtualization** is enabled in your BIOS
* download and install the latest VirtualBox (https://www.virtualbox.org/wiki/Downloads)
* download and install the latest Vagrant (https://www.vagrantup.com/downloads.html)
* To speed things up Vagrant is going to use **nfs** filesystem so on Linux you need to do:
    ```sh
    sudo apt-get install nfs-kernel-server nfs-common portmap
    ```
    Probably you'll need to restart your machine.
    On Mac OS X 10.5+ (Leopard and higher) this comes pre-installed.

###Using the machine

Getting the machine up:
```sh
vagrant up
```

Provisioning the machine:
```sh
vagrant provision
```

You can ssh to the machine
```sh
vagrant ssh
```

You can stop the machine
```sh
vagrant halt
```

Restart it again with
```sh
vagrant up