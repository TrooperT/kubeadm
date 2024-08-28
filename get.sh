#!/bin/sh
RELEASE="$(wget -qO- https://dl.k8s.io/release/stable.txt)"
ARCH="amd64"
wget -qO kubeadm https://dl.k8s.io/release/${RELEASE}/bin/linux/${ARCH}/kubeadm
chmod +x kubeadm
# ln -s kubeadm-$RELEASE kubeadm
