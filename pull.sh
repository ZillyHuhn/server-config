#!/bin/sh
# pull.sh

cd etc/apache2/sites-available || exit 1

cp_file() {
	filepath="$1"
	cp "$filepath" "$(basename "$filepath")"
}

while read -r cfg
do
	cp_file "$cfg"
done < <(awk NF ./tracked_files.txt | grep '^/')

