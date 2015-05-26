Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.forward_agent = true

  config.vm.define "playground" do |v|
    #speed up shared file syncing with nfs
    v.vm.synced_folder '/playground', "/home/vagrant/projects", :nfs => true

    v.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end

    #NFS requires a host-only network to be created
    v.vm.network "private_network", ip: "192.168.50.5"

    v.vm.provision :shell, path: "provisioning/system_setup.sh"
    v.vm.provision :shell, path: "provisioning/node_setup.sh", privileged: false
    v.vm.provision :shell, path: "provisioning/mongo_setup.sh", privileged: false

    v.vm.network "forwarded_port", guest: 9000, host: 9000
  end
end
