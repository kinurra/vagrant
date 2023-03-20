#!/bin/bash

apt-get update
apt-get install -y  docker.io
usermod -aG docker vagrant

token=$(cat /vagrant/node-token)
curl -sfL https://get.k3s.io | K3S_URL=https://10.168.9.11:6443 K3S_TOKEN=$token K3S_KUBECONFIG_MODE="644" sh -