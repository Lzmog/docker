#!/bin/sh

# Install Docker CE on Lubuntu 17.04
# Run this script with sudo privileges `sudo docker-install-lubuntu-17.04.sh`

apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu zesty stable"
apt-get update
apt-get install -y docker-ce

# Test install with `docker version`


# Bonus: Install Docker machine
# https://docs.docker.com/machine/install-machine/#install-machine-directly

curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && chmod +x /tmp/docker-machine && cp /tmp/docker-machine /usr/local/bin/docker-machine

# Test install with `docker-machine version`


# Bonus2: Install Docker compose

apt-get install -y docker-compose

# Test install with `docker-compose version`