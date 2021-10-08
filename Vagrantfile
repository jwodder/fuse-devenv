Vagrant.configure("2") do |config|
    config.vm.box = "debian/bullseye64"

    config.vm.provision "shell", inline: <<~SHELL
        #!/bin/bash
        set -ex
        export DEBIAN_FRONTEND=noninteractive
        run-parts -v --exit-on-error /vagrant/setup/root
        sudo -H -u vagrant run-parts -v --exit-on-error /vagrant/setup/user
    SHELL
end
