#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	local input="$@"
	local question=0
	local yelling=0

	if [[ -z $input ]]; then
		echo "Fine. Be that way!"
		exit 0
	fi

	if [[ ${input:${#input}-1:1} = "?" ]]; then
		question=1
	fi

	local alnum_input=$(tr -cd '[:alnum:]' <<< $input)
	if [[ "$alnum_input" =~ ^[A-Z]+$ ]]; then
		yelling=1
	fi

	if [[ $yelling -eq 1 ]]; then
		if [[ $question -eq 1 ]]; then
			echo "Calm down, I know what I'm doing!"
			exit 0
		else
			echo "Whoa, chill out!"
			exit 0
		fi
	fi

	if [[ $question -eq 1 ]]; then
		echo "Sure."
		exit 0
	fi

	echo "Whatever."
}

main "$@"