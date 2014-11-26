Packetbeat Deploy: DIY application monitoring system
====================================================

Ansible playbooks for deploying and maintaining Packetbeat + Elasticsearch +
Logstash + Kibana.

Please see [http://packetbeat.com/deploy](http://packetbeat.com/deploy) for a
tutorial on how to use this project on your own projects.

## Developing / Testing

Vagrant can be used for testing Packetbeat Deploy. The ``Vagrantfile`` contains
definitions for 5 VMs that we use for testing.

To bring the test system up, do the following:

        vagrant up

Add the SSH connection information to your SSH config, from where Ansible can
read it:

        vagrant ssh-config >> ~/.ssh/config

Now you are ready to run the Ansible roles:

        ansible-playbook -i hosts-vagrant site.yml

Or for the all-in-one version (installs the full Packetbeat System on the
aggregator host):

        ansible-playbook -i hosts-vagrant-allinone site.yml
