# my vps config files - zillyhuhn.com

Follow this repo and find all my nobo security vulns :D

Use them to have a nice giggle, attack or even pr fixes.


THIS REPOSITROY IS ONLY FOR PRIVATE USE TRACKING AND BACKUPS.
USING PARTS OF THE CONFIGURATION MIGHT BREAK YOUR SYSTEM.


## setup (incomplete)

I also installed some apache2 modules but yikes idk which ones
```
sudo apt install apache2
certbot certonly \
    -d zillyhuhn.com -d www.zillyhuhn.com \
    -d paste.zillyhuhn.com -d www.paste.zillyhuhn.com \
    -d mail.zillyhuhn.com -d www.mail.zillyhuhn.com

git clone https://github.com/ZillyHuhn/server-config
cd server-config
./push.sh
```

