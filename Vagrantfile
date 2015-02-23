Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  #speed up shared file syncing with nfs
  config.vm.synced_folder '/playground', "/home/vagrant/projects", :nfs => true

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  #NFS requires a host-only network to be created
  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provision :shell, path: "provisioning/system_setup.sh"
  config.vm.provision :shell, path: "provisioning/node_setup.sh", privileged: false
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.ssh.forward_agent = true

end
