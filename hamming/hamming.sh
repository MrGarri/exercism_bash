#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	if [[ $# -ne 2 ]]; then
		echo "Usage: hamming.sh <string1> <string2>"
		exit 1
	fi

	local s1="$1"
	local s2="$2"

	if [[ ${#s1} -ne ${#s2} ]]; then
		echo "left and right strands must be of equal length"
		exit 1
	fi

	local hamming=0

	# Iterate strings char by char
	for i in $(seq 1 ${#s1}); do
		if [[ ${s1:i-1:1} != ${s2:i-1:1} ]]; then
			hamming=$(($hamming+1))
		fi
	done

	echo $hamming
}

main "$@"