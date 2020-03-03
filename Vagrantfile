# -*- mode: ruby -*-

DOMAIN = "gitbook.local"

instances = [
  {
    :name       => "alpine36",
    :image      => "generic/alpine36",
    :host_port  => "4006"
  },
  {
    :name       => "alpine37",
    :image      => "generic/alpine37",
    :host_port  => "4007"
  },
  {
    :name       => "alpine38",
    :image      => "generic/alpine38",
    :host_port  => "4008"
  },
  {
    :name       => "alpine310",
    :image      => "generic/alpine310",
    :host_port  => "4010"
  },
  {
    :name       => "ubuntu1404",
    :image      => "ubuntu/trusty64",
    :host_port  => "4014"
  },
  {
    :name       => "ubuntu1604",
    :image      => "ubuntu/xenial64",
    :host_port  => "4016"
  },
  {
    :name       => "ubuntu1804",
    :image      => "ubuntu/bionic64",
    :host_port  => "4018"
  },
]

# Main
######

Vagrant.configure("2") do |config|

  # Loop by each.
  instances.each do |instance|

    config.vm.define instance[:name] do |node|
      node.vm.box = instance[:image].to_s

      # hostname = <instance name>.<DOMAIN>
      if ( instance[:name].to_s =~ /^ubuntu/ )
        node.vm.hostname = instance[:name].to_s + "." + DOMAIN
      end

      node.vm.provider "virtualbox" do |vb|
        vb.linked_clone = true
        vb.memory = "2048"
      end

      # Provision before run playbook.
      case
      when instance[:name].to_s =~ /^alpine/
        node.vm.provision "shell",
          inline: "sudo apk update && sudo apk add python"
      when instance[:name].to_s =~ /^ubuntu/
        node.vm.provision "shell",
          inline: "sudo sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list"
        node.vm.provision "shell",
          inline: "sudo apt update && sudo apt install -y python"
      end

      node.vm.provision "ansible" do |ansible|
        ansible.playbook = "setup.yml"
        ansible.become = true
      end
    end

  end
end

# vi: set ft=ruby :
