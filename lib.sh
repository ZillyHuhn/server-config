#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" || exit 1; pwd -P)"
if [ "$SCRIPT_DIR" == "" ]
then
	echo "Error: failed to get script dir"
	exit 1
fi

function list_all_files() {
	awk NF "$SCRIPT_DIR/tracked_files.txt" | grep '^/'
}

