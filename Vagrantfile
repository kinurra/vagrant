Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
 
  config.vm.define "master" do |master|
    master.vm.network "public_network",ip: "10.168.9.11"
    master.vm.hostname = "master"
      master.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
     end
	master.vm.provision "shell", path: "k3s_master.sh"
  end

  config.vm.define "node1" do |node1|
    node1.vm.hostname = "node1"
    node1.vm.network "public_network",ip: "10.168.9.12"
	node1.vm.provision "shell", path: "k3s_worker.sh"
  end

 # config.vm.define "node2" do |node2|
  #  node2.vm.hostname = "node2"
   # node2.vm.network "private_network",ip: "10.168.9.13"
	#node2.vm.provision "shell", path: "k3s_worker.sh"
#  end

  
end