# -*- mode: ruby -*-
# vi: set ft=ruby :

# This Vagrantfile is for testing the setup locally.

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Use a debian squeeze base machine
    config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-73-x64-virtualbox-nocm.box"

    config.vm.define "esnode1" do |esnode|
        esnode.vm.box = "esnode1"

        esnode.vm.network "forwarded_port", guest: 22, host: 2301
        esnode.vm.network "private_network", ip: "192.168.33.11"

    end

    config.vm.define "esnode2" do |esnode|
        esnode.vm.box = "esnode2"

        esnode.vm.network "forwarded_port", guest: 22, host: 2302
        esnode.vm.network "private_network", ip: "192.168.33.12"
    end

    config.vm.define "logcentral" do |logcentral|
        logcentral.vm.box = "logcentral"

        logcentral.vm.network "forwarded_port", guest: 22, host: 2303
        logcentral.vm.network "private_network", ip: "192.168.33.13"
    end
    config.vm.synced_folder ".", "/vagrant"
end
