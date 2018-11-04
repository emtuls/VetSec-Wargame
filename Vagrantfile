Vagrant.configure('2') do |config|

    config.vm.hostname = 'vetsec-wg'
    config.vm.box = 'bento/ubuntu-18.04'   
    config.vm.synced_folder './', '/vagrant'

    #config.vm.network :forwarded_port, guest: 9000, host: 9000
    #config.vm.network :forwarded_port, guest: 9000, host: 9000
    
    # Below are also the username and password to log in via GUI if 
    # vb.gui is set to 'true'
    config.ssh.username = 'vagrant'
    config.ssh.password = 'vagrant'

    config.vm.provider :virtualbox do |vb|
        vb.name = 'vetsec-wargame'
        vb.customize ['modifyvm', :id, '--memory', '768', '--cpus', '2']
        vb.gui = false
    end

    config.vm.provision :shell do |shell|
        shell.privileged = false
        shell.inline = "bash /vagrant/setup_box.sh"
    end
end
