#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
	
	if [[ $# -ne 1 ]]; then
		echo "Usage: ./error_handling <greetee>"
		exit 1
	fi
	
	local input="$@"
	echo "Hello, ${input}"

}

main "$@"