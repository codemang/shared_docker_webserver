#!/bin/bash

# Create the network
docker network create nginx-proxy

# Create the data directories
mkdir -p /root/nginx-data/certs
chmod a+w /root/nginx-data/certs
mkdir -p /root/nginx-data/vhost.d
chmod a+w /root/nginx-data/vhost.d
mkdir -p /root/nginx-data/html
chmod a+w /root/nginx-data/html

# Start the nginx-proxy and letsencrypt containeres
letsencrypt containeresdocker-compose up -d
