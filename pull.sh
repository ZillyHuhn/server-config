#!/bin/sh
# pull.sh

cd etc/apache2/sites-available || exit 1
cp /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf paste.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/zillyhuhn.com.conf              zillyhuhn.com.conf
cp /etc/apache2/sites-available/default-ssl.conf                default-ssl.conf
cp /etc/apache2/sites-available/000-default.conf                000-default.conf
cp /etc/apache2/sites-available/default-tls.conf                default-tls.conf
cp /etc/apache2/sites-available/paste.zillyhuhn.com.conf        paste.zillyhuhn.com.conf
cp /etc/apache2/sites-available/zillyhuhn.com-le-ssl.conf       zillyhuhn.com-le-ssl.conf

