Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 2
    vb.memory = "4096"
  end
  
  config.vm.provision "file", source: "./files/minion.conf", destination: "/tmp/minion.conf"

  config.vm.provision "shell" do |shell|
    shell.path = "salt.sh"
  end
end