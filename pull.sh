#!/bin/sh
# pull.sh

cd etc/apache2/sites-available || exit 1
cp /etc/apache2/sites-available/mail.zillyhuhn.com.conf         mail.zillyhuhn.com.conf
cp /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf  mail.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/paste.zillyhuhn.com.conf        paste.zillyhuhn.com.conf
cp /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf paste.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/zillyhuhn.com.conf              zillyhuhn.com.conf
cp /etc/apache2/sites-available/zillyhuhn.com-le-ssl.conf       zillyhuhn.com-le-ssl.conf

