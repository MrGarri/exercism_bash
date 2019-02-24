#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	local input="$@"

	local acronym=""
	IFS="- "
	for arg in $input; do
		acronym=$acronym${arg:0:1}
	done
	IFS=" "

	# Uppercase whole string just in case (JIC)
	echo $(tr '[:lower:]' '[:upper:]' <<< ${acronym})
}

main "$@"