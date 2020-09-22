#!/bin/sh

# Copy nginx config
cp -rf ../config/nginx/nginx.conf /etc/nginx/nginx.conf
echo "Successfuly copied nginx.conf to /etc/nginx/nginx.conf"
echo "Please restart nginx to effect the change ..."

