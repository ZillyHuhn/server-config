# my vps config files - zillyhuhn.com

Follow this repo and find all my nobo security vulns :D

Use them to have a nice giggle, attack or even pr fixes.


THIS REPOSITROY IS ONLY FOR PRIVATE USE TRACKING AND BACKUPS.
USING PARTS OF THE CONFIGURATION MIGHT BREAK YOUR SYSTEM.


## setup (incomplete)

I also installed some apache2 modules but yikes idk which ones
```
sudo apt install apache2
git clone https://github.com/ZillyHuhn/server-config
cd server-config
./push.sh
sh generate-ssl-cert.sh
sudo a2ensite \
    api-fddr.zillyhuhn.com.conf  api-fddr.zillyhuhn.com-le-ssl.conf \
    mail.zillyhuhn.com.conf mail.zillyhuhn.com-le-ssl.conf \
    paste.zillyhuhn.com.conf paste.zillyhuhn.com-le-ssl.conf \
    zillyhuhn.com.conf zillyhuhn.com-le-ssl.conf
```

