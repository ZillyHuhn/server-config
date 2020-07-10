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

backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/default-ssl.conf
backup_cfg /etc/apache2/sites-available/000-default.conf
backup_cfg /etc/apache2/sites-available/default-tls.conf
backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/zillyhuhn.com-le-ssl.conf

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
cp paste.zillyhuhn.com-le-ssl.conf /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
cp zillyhuhn.com.conf              /etc/apache2/sites-available/zillyhuhn.com.conf             
cp default-ssl.conf                /etc/apache2/sites-available/default-ssl.conf               
cp 000-default.conf                /etc/apache2/sites-available/000-default.conf               
cp default-tls.conf                /etc/apache2/sites-available/default-tls.conf               
cp paste.zillyhuhn.com.conf        /etc/apache2/sites-available/paste.zillyhuhn.com.conf       
cp zillyhuhn.com-le-ssl.conf       /etc/apache2/sites-available/zillyhuhn.com-le-ssl.conf      

