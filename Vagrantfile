# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  #
  # Centos
  #

  config.vm.define "centos-7.0" do |v|
    v.vm.box = "chef/centos-7.0"
    v.vm.box_url = "https://vagrantcloud.com/chef/centos-7.0"
    v.vm.hostname = "boundary-plugin-cpu-core-centos-7-0"
    v.vm.post_up_message = "TO LOGIN: vagrant ssh centos-7.0"
    v.vm.provision :shell do |shell|
     shell.inline = "yum update -y"
    end
  end

  #
  # Ubuntu
  #

  config.vm.define "ubuntu-14.04" do |v|
    v.vm.box = "ubuntu/trusty64"
    v.vm.hostname = "boundary-plugin-cpu-core-ubuntu-14.04"
    v.vm.post_up_message = "Run vagrant ssh ubuntu-14.04 to login"
    v.vm.provision :shell do |shell|
     shell.inline = "apt-get update -y"
    end
  end

  #
  # Windows
  #
  config.vm.define "windows-2012-standard" do |v|
    v.vm.box = "opentable/win-2012-standard-amd64-nocm"
    # Name shortened due to limitation of Windows
    v.vm.hostname = "cpu-corewin-2012"
    v.vm.communicator = "winrm"
    v.vm.network "forwarded_port", guest: 3389, host: 3389
  end

 config.vm.provider "virtualbox" do |v|
     v.memory = 2048
     v.cpus = 2
 end

end
