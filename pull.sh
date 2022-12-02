#!/bin/sh
# pull.sh

cd etc/apache2/sites-available || exit 1
cp /etc/apache2/sites-available/001-zillyhuhn.com.conf              001-zillyhuhn.com.conf
cp /etc/apache2/sites-available/001-zillyhuhn.com-le-ssl.conf       001-zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/api-fddr.zillyhuhn.com.conf         api-fddr.zillyhuhn.com.conf
cp /etc/apache2/sites-available/api-fddr.zillyhuhn.com-le-ssl.conf  api-fddr.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/captcha.zillyhuhn.com.conf          captcha.zillyhuhn.com.conf
cp /etc/apache2/sites-available/captcha.zillyhuhn.com-le-ssl.conf   captcha.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/chillerbot.zillyhuhn.com.conf          chillerbot.zillyhuhn.com.conf
cp /etc/apache2/sites-available/chillerbot.zillyhuhn.com-le-ssl.conf   chillerbot.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/mail.zillyhuhn.com.conf             mail.zillyhuhn.com.conf
cp /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf      mail.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/paste.zillyhuhn.com.conf            paste.zillyhuhn.com.conf
cp /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf     paste.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/trans.zillyhuhn.com.conf            trans.zillyhuhn.com.conf
cp /etc/apache2/sites-available/trans.zillyhuhn.com-le-ssl.conf     trans.zillyhuhn.com-le-ssl.conf
cp /etc/apache2/sites-available/tube.zillyhuhn.com.conf             tube.zillyhuhn.com.conf
cp /etc/apache2/sites-available/tube.zillyhuhn.com-le-ssl.conf      tube.zillyhuhn.com-le-ssl.conf

