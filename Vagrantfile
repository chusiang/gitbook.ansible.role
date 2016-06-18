# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "gitbook.local", primary: true do |node|
    node.vm.box = "ubuntu/trusty64"
    node.vm.network "forwarded_port", guest: 4000, host: 4000

    node.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end

    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "setup.yml"
      ansible.sudo = true
    end
  end
end
