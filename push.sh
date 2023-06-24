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
backup_cfg /etc/apache2/sites-available/chillerbot.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/chillerbot.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/mail.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/mail.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/paste.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/trans.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/trans.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/tube.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/tube.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/ddnetpp.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/ddnetpp.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/filetype_whitelist.conf
backup_cfg /etc/apache2/sites-available/ascii.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/ascii.zillyhuhn.com-le-ssl.conf
backup_cfg /etc/apache2/sites-available/api-whaah.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/api-whaah.zillyhuhn.com-le-ssl-le-ssl.conf
backup_cfg /etc/apache2/sites-available/chat.zillyhuhn.com.conf
backup_cfg /etc/apache2/sites-available/chat.zillyhuhn.com-le-ssl.conf

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

cp_file() {
	local filepath="$1"
	cp "$(basename "$filepath")" "$filepath"
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
cp_file /etc/apache2/sites-available/api-whaah.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/api-whaah.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/chat.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/chat.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/ws-irc.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/ws-irc.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/2b2w.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/2b2w.zillyhuhn.com-le-ssl.conf
cp_file /etc/apache2/sites-available/ocp.zillyhuhn.com.conf
cp_file /etc/apache2/sites-available/ocp.zillyhuhn.com-le-ssl.conf
