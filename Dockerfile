FROM docker:latest AS downloads
WORKDIR /downloads
# COPY <<EOF /downloads/get.sh
# #!/bin/sh
# RELEASE="$(wget -qO- https://dl.k8s.io/release/stable.txt)"
# ARCH="amd64"
# wget -qO kubeadm-$RELEASE https://dl.k8s.io/release/${RELEASE}/bin/linux/${ARCH}/kubeadm
# chmod +x kubeadm-$RELEASE
# # ln -s kubeadm-$RELEASE kubeadm
# EOF

COPY get.sh /downloads/get.sh
RUN /bin/sh -c /downloads/get.sh

FROM alpine:latest
COPY --from=downloads --chown=root:root /downloads/kubeadm /usr/bin/kubeadm
COPY generate-kubeconfig /usr/bin/generate-kubeconfig
