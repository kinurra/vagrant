Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "apt-get update && apt-get install -y  docker.io "

  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/jammy64"
    master.vm.network "private_network",ip: "10.168.9.3"
    master.vm.hostname = "master"
      master.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
     end
  end

  config.vm.define "node1" do |node1|
    node1.vm.hostname = "node1"
    node1.vm.box = "ubuntu/jammy64"
    node1.vm.network "private_network",ip: "10.168.9.2"
  end

  config.vm.define "node2" do |node2|
    node2.vm.hostname = "node2"
    node2.vm.box = "ubuntu/jammy64"
    node2.vm.network "private_network",ip: "10.168.9.4"
  end

end