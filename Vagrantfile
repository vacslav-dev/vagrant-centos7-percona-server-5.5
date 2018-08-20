require 'yaml'
require 'fileutils'

ENV['VAGRANT_DEFAULT_PROVIDER'] ='virtualbox'

vagrantfile_dir_path = File.dirname(__FILE__)

config = {
    local: vagrantfile_dir_path + '/config/vagrant-local.yml',
    example: vagrantfile_dir_path + '/config/vagrant-local.example.yml'
}

FileUtils.cp config[:example], config[:local] unless File.exist?(config[:local])

options = YAML.load_file config[:local]

Vagrant.configure(2) do |config|
    config.vm.box = 'centos/7'
    config.vm.network 'private_network', ip: options['ip']
    config.vm.provision 'shell', path: './install.sh'
end
