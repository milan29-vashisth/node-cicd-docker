#!/bin/bash

apt-get update -y

# Install Docker
apt-get install -y docker.io
systemctl enable docker
systemctl start docker

# Add azureuser to docker group
usermod -aG docker azureuser

# Install Nginx
apt-get install -y nginx
systemctl enable nginx
systemctl start nginx

# Optional utilities
apt-get install -y curl unzip git

echo "Bootstrap complete" > /var/log/bootstrap.log