#!/bin/bash
# push.sh

function backup_cfg() {
    if [ ! -f "$1" ]
    then
        return
    fi
    echo "backup '$1' in '/tmp/zilly-apache' ..."
    cp "$1" /tmp/zilly-apache
}

backup_cfg /etc/apache2/sites-available/001-zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/001-zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/api-fddr.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/api-fddr.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/captcha.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/captcha.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/mail.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/trans.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/trans.zillyhuhn.com-le-ssl.conf

echo "WARNING THIS WILL OVERWRITE YOUR SYSTEM CONFIGURATION!!!"
echo "DATA WILL BE LOST!!!"
echo "replacing files in /etc/apache2/sites-available"
echo ""
echo "do you want to continue? [y/N]"
yn=""
read -r -n 1 yn
echo ""
if ! [[ "$yn" =~ [yY] ]]
then
    echo "aborting ..."
    exit 1
fi

cd etc/apache2/sites-available || exit 1
cp 001-zillyhuhn.com.conf               /etc/apache2/sites-available/001-zillyhuhn.com.conf
cp 001-zillyhuhn.com-le-ssl.conf        /etc/apache2/sites-available/001-zillyhuhn.com-le-ssl.conf
cp api-fddr.zillyhuhn.com.conf          /etc/apache2/sites-available/api-fddr.zillyhuhn.com.conf
cp api-fddr.zillyhuhn.com-le-ssl.conf   /etc/apache2/sites-available/api-fddr.zillyhuhn.com-le-ssl.conf
cp captcha.zillyhuhn.com.conf           /etc/apache2/sites-available/captcha.zillyhuhn.com.conf
cp captcha.zillyhuhn.com-le-ssl.conf    /etc/apache2/sites-available/captcha.zillyhuhn.com-le-ssl.conf
cp mail.zillyhuhn.com.conf              /etc/apache2/sites-available/mail.zillyhuhn.com.conf
cp mail.zillyhuhn.com-le-ssl.conf       /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf
cp paste.zillyhuhn.com.conf             /etc/apache2/sites-available/paste.zillyhuhn.com.conf
cp paste.zillyhuhn.com-le-ssl.conf      /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
cp trans.zillyhuhn.com.conf             /etc/apache2/sites-available/trans.zillyhuhn.com.conf
cp trans.zillyhuhn.com-le-ssl.conf      /etc/apache2/sites-available/trans.zillyhuhn.com-le-ssl.conf

