# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "alpine36", primary: true do |node|
    node.vm.box = "generic/alpine36"
    node.vm.network "forwarded_port", guest: 4000, host: 4000
    node.vm.provider "virtualbox" do |vb|
		  vb.linked_clone = true
      vb.memory = "2048"
    end
    node.vm.provision "shell",
      inline: "echo '==> Install python ...' && apk update && apk add python"
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "setup.yml"
      ansible.become = true
    end
  end

  config.vm.define "ubuntu1404" do |node|
    node.vm.box = "ubuntu/trusty64"
    node.vm.hostname = "gitbook-ubuntu1404"
    node.vm.network "forwarded_port", guest: 4000, host: 4001
    node.vm.provider "virtualbox" do |vb|
		  vb.linked_clone = true
      vb.memory = "2048"
    end
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "setup.yml"
      ansible.become = true
    end
  end

  config.vm.define "ubuntu1604" do |node|
    node.vm.box = "ubuntu/xenial64"
    node.vm.hostname = "gitbook-ubuntu1604"
    node.vm.network "forwarded_port", guest: 4000, host: 4002
    node.vm.provider "virtualbox" do |vb|
		  vb.linked_clone = true
      vb.memory = "2048"
    end
    node.vm.provision "shell",
      inline: "apt-get update && apt-get install -y python"
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "setup.yml"
      ansible.become = true
    end
  end

end
