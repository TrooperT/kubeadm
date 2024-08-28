#!/bin/sh
RELEASE="$(wget -qO- https://dl.k8s.io/release/stable.txt)"
ARCH="amd64"
wget -qO kubeadm-$RELEASE https://dl.k8s.io/release/${RELEASE}/bin/linux/${ARCH}/kubeadm
chmod +x kubeadm-$RELEASE
ln -s kubeadm-$RELEASE kubeadm
