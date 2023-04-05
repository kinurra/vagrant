#!/bin/bash

apt-get update
apt-get install -y  docker.io
usermod -aG docker vagrant

curl -sfL https://get.k3s.io | sh -s - server --tls-san 10.168.9.11 --node-external-ip 10.168.9.11 --write-kubeconfig-mode 644 --disable=traefik

token=$(sudo cat /var/lib/rancher/k3s/server/node-token)
echo $token > /vagrant/node-token