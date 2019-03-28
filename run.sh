#!/bin/bash

# Create the network
docker network create nginx-proxy

# Create the data directories
sudo mkdir -p /root/nginx-data/certs
sudo chmod a+w /root/nginx-data/certs
sudo mkdir -p /root/nginx-data/vhost.d
sudo chmod a+w /root/nginx-data/vhost.d
sudo mkdir -p /root/nginx-data/html
sudo chmod a+w /root/nginx-data/html

# Start the nginx-proxy and letsencrypt containeres
docker-compose up -d
