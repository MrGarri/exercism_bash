#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	local input="$@"
	local length=${#input}
	local acc=0

	for i in $(seq 1 ${length}); do
		local digit=${input:i-1:1}
		acc=$(($acc + $digit**$length))
	done

	if [[ $acc -eq $input ]]; then
		echo "true"
	else
		echo "false"
	fi
}

main "$@"