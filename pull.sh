#!/bin/bash
# pull.sh

source lib.sh || exit 1

cd etc/apache2/sites-available || exit 1

cp_file() {
	filepath="$1"
	cp "$filepath" "$(basename "$filepath")"
}

while read -r cfg
do
	cp_file "$cfg"
done < <(list_all_files)

while read -r cfg
do
	if ! list_all_files | grep -q "$cfg"
	then
		echo "Warning: file not tracked $cfg"
	fi
done < <(find /etc/apache2/sites-available/)
