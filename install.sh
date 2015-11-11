#!/bin/bash

openssl dhparam -out /etc/nginx/ssl/dhparam.pem 2048

cp ./nginx/ighilaza.com.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/ighilaza.com.conf /etc/nginx/sites-enabled/
nginx -s reload

mkdir -p /var/www/ighilaza/
cp -r ./site/* /var/www/ighilaza/
