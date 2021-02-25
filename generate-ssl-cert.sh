#!/bin/sh

# main site cert
# /etc/letsencrypt/live/zillyhuhn.com/
certbot certonly \
     -d zillyhuhn.com -d www.zillyhuhn.com

# subdomain wildcart cert
# /etc/letsencrypt/live/zillyhuhn.com-0001/
certbot certonly \
    --manual \
    --preferred-challenges=dns \
    --email chillerdragon@gmail.com \
    --server https://acme-v02.api.letsencrypt.org/directory \
    --agree-tos \
    -d '*.zillyhuhn.com'

