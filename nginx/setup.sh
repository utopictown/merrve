#!/bin/bash

# Create SSL directories for both domains
mkdir -p ssl/live/merrve.com
mkdir -p ssl/live/api.merrve.com

# Create certbot directories
mkdir -p certbot/conf
mkdir -p certbot/data
mkdir -p certbot/www

# Create logs directory
mkdir -p logs

# Set proper permissions
chmod -R 755 certbot
chmod -R 755 ssl
chmod -R 755 logs

echo "Nginx directories created successfully!" 