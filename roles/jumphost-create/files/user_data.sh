#!/bin/bash
set -e -x

sudo dnf install -y wget curl python36 python36-devel python36-pip net-tools gcc libffi-devel openssl-devel jq bind-utils podman
sudo pip3 install requests-oauthlib
# mitmproxy

wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz

mkdir openshift
tar -zxvf openshift-client-linux.tar.gz -C openshift
sudo install openshift/oc /usr/local/bin/oc
sudo install openshift/kubectl /usr/local/bin/kubectl
