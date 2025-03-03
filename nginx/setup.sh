#!/bin/bash

# Create required directories
mkdir -p ssl/live/merrve.com
mkdir -p certbot/conf
mkdir -p certbot/data
mkdir -p certbot/www
mkdir -p logs

# Set proper permissions
chmod -R 755 certbot
chmod -R 755 ssl
chmod -R 755 logs

echo "Nginx directories created successfully!" 