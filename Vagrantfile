# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  distro_release = ENV['distro_release'] || 'centos-7'

  # Every Vagrant virtual environment requires a box to build off of.
  case distro_release
  when 'precise'
    config.vm.box      = 'hashicorp/precise64'
    config.vm.box_url  = 'https://vagrantcloud.com/hashicorp/precise64'
  when 'trusty'
    config.vm.box      = 'puppetlabs/ubuntu-14.04-64-puppet'
    config.vm.box_version = '1.0.1'
    config.vm.box_url  = 'https://vagrantcloud.com/puppetlabs/ubuntu-14.04-64-puppet'
  when 'wheezy'
    config.vm.box      = 'cargomedia/debian-7-amd64-default'
    config.vm.box_url  = 'https://vagrantcloud.com/cargomedia/debian-7-amd64-default'
  when 'centos-6'
    config.vm.box      = 'puppetlabs/centos-6.5-64-puppet'
    config.vm.box_url  = 'https://vagrantcloud.com/puppetlabs/boxes/centos-6.5-64-puppet'
  when 'centos-7'
    config.vm.box      = 'puppetlabs/centos-7.0-64-puppet'
    config.vm.box_url  = 'https://vagrantcloud.com/puppetlabs/centos-7.0-64-puppet'
  end

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"
  config.vm.share_folder "v-data", "/data", File.join(File.dirname(__FILE__),"data")

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  config.vm.provision :puppet do |puppet|
     #puppet.module_path = ["puppet-repo/modules"]
     #puppet.manifests_path = "puppet-repo/manifests"
     #puppet.manifest_file  = "site.pp"

     puppet.environment_path = "puppet-repo"
     puppet.environment = "devel"

     puppet.options = "--verbose --debug"


  end



end
