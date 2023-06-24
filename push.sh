#!/bin/bash
# push.sh

source lib.sh || exit 1

function backup_cfg() {
    if [ ! -f "$1" ]
    then
        return
    fi
    echo "backup '$1' in '/tmp/zilly-apache' ..."
    cp "$1" /tmp/zilly-apache
}

while read -r cfg
do
	backup_cfg "$cfg"
done < <(list_all_files)

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

while read -r cfg
do
	cp_file "$cfg"
done < <(list_all_files)

