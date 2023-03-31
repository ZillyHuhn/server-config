#!/bin/sh
# pull.sh

cd etc/apache2/sites-available || exit 1

cp_file() {
	filepath="$1"
	cp "$filepath" "$(basename "$filepath")"
}

cp_file /etc/apache2/sites-available/001-zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/001-zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/api-fddr.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/api-fddr.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/captcha.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/captcha.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/chillerbot.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/chillerbot.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/mail.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/paste.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/trans.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/trans.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/tube.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/tube.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/ddnetpp.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/ddnetpp.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/filetype_whitelist.conf
cp_file /etc/apache2/sites-available/ascii.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/ascii.zillyhuhn.com-le-ssl.conf

