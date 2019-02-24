#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	

	if [[ $# -lt 1 ]]; then
		local input="you"
	else
		local input="$1"	
	fi	

	echo "One for ${input}, one for me."

}

main "$@"