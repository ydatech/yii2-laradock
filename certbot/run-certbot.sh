#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/live/"$CN"/cert.pem /var/certs/cert.pem
cp /etc/letsencrypt/live/"$CN"/privkey.pem /var/certs/privkey.pem
cp /etc/letsencrypt/live/"$CN"/fullchain.pem /var/certs/fullchain.pem
cp /etc/letsencrypt/live/"$CN"/chain.pem /var/certs/chain.pem
