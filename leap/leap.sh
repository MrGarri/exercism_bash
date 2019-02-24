#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	
	if [[ $# -ne 1 || $@ =~ [a-zA-Z] || $@ =~ [0-9]*[.][0-9]* ]]; then
		echo "Usage: leap.sh <year>"
		exit 1
	fi

  local input="$1"

	if [[ $(($input % 400)) -eq 0 ]]; then
		echo "true"
	elif [[ $(($input % 100)) -eq 0 ]]; then
		echo "false"
	elif [[ $(($input % 4)) -eq 0 ]]; then
		echo "true"
	else
		echo "false"
	fi 

}

main "$@"