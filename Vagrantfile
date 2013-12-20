# -*- mode: ruby -*-
# vi: set ft=ruby :
#

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    config.vm.box = "raring32"
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-i386-vagrant-disk1.box"
    v.customize ["modifyvm", :id, "--memory", 256]
  end

  config.vm.provision :puppet, :module_path => ["manifests","modules"]

end
