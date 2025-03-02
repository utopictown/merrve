#!/bin/bash
# /opt/merrve/scripts/renew-cert.sh

# Stop nginx
docker-compose -f docker-compose.prod.yml stop nginx

# Renew certificate
certbot renew

# Copy new certificates
cp /etc/letsencrypt/live/merrve.com/* /opt/merrve/nginx/ssl/live/merrve.com/

# Start nginx
docker-compose -f docker-compose.prod.yml start nginx