# my vps config files - zillyhuhn.com

Follow this repo and find all my nobo security vulns :D

Use them to have a nice giggle, attack or even pr fixes.


THIS REPOSITROY IS ONLY FOR PRIVATE USE TRACKING AND BACKUPS.
USING PARTS OF THE CONFIGURATION MIGHT BREAK YOUR SYSTEM.


## setup (incomplete)

I also installed some apache2 modules but yikes idk which ones
```
sudo apt install apache2
```

THIS IS NOT A SETUP INSTRUCTION FOR YOUR SYSTEM!!!

this is how the git repo was created.

you probably want it the other way around but care.

```
cd etc/apache2/sites-available
ln -n /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf paste.zillyhuhn.com-le-ssl.conf
ln -n /etc/apache2/sites-available/zillyhuhn.com.conf              zillyhuhn.com.conf
ln -n /etc/apache2/sites-available/default-ssl.conf                default-ssl.conf
ln -n /etc/apache2/sites-available/000-default.conf                000-default.conf
ln -n /etc/apache2/sites-available/default-tls.conf                default-tls.conf
ln -n /etc/apache2/sites-available/paste.zillyhuhn.com.conf        paste.zillyhuhn.com.conf
ln -n /etc/apache2/sites-available/zillyhuhn.com-le-ssl.conf       zillyhuhn.com-le-ssl.conf
```

