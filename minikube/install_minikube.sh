#!/bin/bash -e
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 --insecure
chmod +x minikube
sudo mv minikube /usr/local/bin/

apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg --insecure| apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubectl

