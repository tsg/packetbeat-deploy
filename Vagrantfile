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

        esnode.ssh.port = 2301
        esnode.vm.network "forwarded_port", guest: 22, host: esnode.ssh.port
        esnode.vm.network "private_network", ip: "192.168.33.11"
    end

    config.vm.define "esnode2" do |esnode|
        esnode.vm.box = "esnode2"

        esnode.ssh.port = 2302
        esnode.vm.network "forwarded_port", guest: 22, host: esnode.ssh.port
        esnode.vm.network "private_network", ip: "192.168.33.12"
    end

    config.vm.define "aggregator" do |aggregator|
        aggregator.vm.box = "aggregator"

        aggregator.ssh.port = 2303
        aggregator.vm.network "forwarded_port", guest: 22, host: aggregator.ssh.port
        aggregator.vm.network "private_network", ip: "192.168.33.13"
    end
    config.vm.synced_folder ".", "/vagrant"

    config.vm.define "app-deb-1" do |app|
        app.vm.box = "app-deb-1"

        app.ssh.port = 2304
        app.vm.network "forwarded_port", guest: 22, host: app.ssh.port
        app.vm.network "private_network", ip: "192.168.33.14"
    end
    config.vm.synced_folder ".", "/vagrant"

    config.vm.define "app-centos-1" do |app|
        app.vm.box = "app-centos-1"
        app.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"

        app.ssh.port = 2305
        app.vm.network "forwarded_port", guest: 22, host: app.ssh.port
        app.vm.network "private_network", ip: "192.168.33.15"
    end
    config.vm.synced_folder ".", "/vagrant"
end
