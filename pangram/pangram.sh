#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	local input="$@"
	local alphabet="abcdefghijklmnopqrstuvwxyz"

	input=$(tr -cd '[:alnum:]' <<< $input)
	input=$(tr '[:upper:]' '[:lower:]' <<< $input)

	if [[ -z $input ]]; then
		echo "false"
		exit 0
	fi

	for i in $(seq 1 ${#alphabet}); do
		local char=${alphabet:i-1:1}
		local size_pre=${#input}
		input=${input//$char/}
		local size_post=${#input}
		if [[ $size_pre -eq $size_post ]]; then
			echo "false"
			exit 0
		fi
	done

	echo "true"
}

main "$@"