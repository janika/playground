Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder '/projects', "/home/vagrant/projects", :nfs => true

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  v.vm.provision :shell, path: "provisioning/system_setup.sh"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.ssh.forward_agent = true

end
