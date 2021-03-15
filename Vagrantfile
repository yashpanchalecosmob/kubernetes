Vagrant.configure("2") do |config|


config.vm.define "node1" do |node1|
 node1.vm.box = "ubuntu/bionic64"
 node1.vm.hostname = "node1"
 node1.vm.network "public_network", bridge: "wlp2s0" , ip: "172.16.16.111"
 node1.vm.provision "shell", path: "docker-install-centos.sh"

 config.vm.provider "virtualbox" do |vb|
	vb.memory = "500"
 end

end

config.vm.define "node2" do |node2|
 node2.vm.box = "ubuntu/bionic64"
 node2.vm.hostname = "node2"
 node2.vm.network "public_network",  bridge: "wlp2s0" , ip: "172.16.16.112"
 node2.vm.provision "shell", path: "docker-install-centos.sh"

 config.vm.provider "virtualbox" do |vb|
	vb.memory = "500"
 end



end

config.vm.define "node3" do |node3|
 node3.vm.box = "ubuntu/bionic64"
 node3.vm.hostname = "node3"
 node3.vm.network "public_network", bridge: "wlp2s0" , ip: "172.16.16.113"
 node3.vm.provision "shell", path: "docker-install-centos.sh"

 config.vm.provider "virtualbox" do |vb|
	vb.memory = "500"
 end

end

config.vm.define "node4" do |node4|
 node4.vm.box = "ubuntu/bionic64"
 node4.vm.hostname = "node4"
 node4.vm.network "public_network", bridge: "wlp2s0" , ip: "172.16.16.114"
 node4.vm.provision "shell", path: "docker-install-centos.sh"

 config.vm.provider "virtualbox" do |vb|
	vb.memory = "500"
 end

end



end
