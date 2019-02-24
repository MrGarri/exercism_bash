#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	local input="$1"

	local result=""

	if [[ $(($input % 3)) -eq 0 ]]; then
		result=${result}"Pling"
	fi
	if [[ $(($input % 5)) -eq 0 ]]; then
		result=${result}"Plang"
	fi
	if [[ $(($input % 7)) -eq 0 ]]; then
		result=${result}"Plong"
	fi

	if [[ -z ${result} ]]; then
		result=${input}
	fi

	echo $result
}

main "$@"