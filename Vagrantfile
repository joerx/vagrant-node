# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64-cloudimg"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3000 # Your app will likely be here
  config.vm.network :forwarded_port, guest: 8080, host: 8080 # Node inspector

  # Uncomment and modify to whereever you app resides
  config.vm.synced_folder "../", "/home/vagrant/devel/node"

  config.vm.provider :virtualbox do |vb|
    vb.name = "nodejs-sandbox_" + Time::now().strftime("%s")
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.manifest_file  = "init.pp"
  end

end
