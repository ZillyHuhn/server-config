#!/bin/bash

certbot certonly \
    --manual \
    --preferred-challenges=dns \
    --email chillerdragon@gmail.com \
    --server https://acme-v02.api.letsencrypt.org/directory \
    --agree-tos \
    -d *.zillyhuhn.com

# old explicit sub domains

# certbot certonly \
#     -d zillyhuhn.com -d www.zillyhuhn.com \
#     -d paste.zillyhuhn.com -d www.paste.zillyhuhn.com \
#     -d mail.zillyhuhn.com -d www.mail.zillyhuhn.com

