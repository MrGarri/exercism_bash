#!/usr/bin/env bash

set -o errexit
set -o nounset

main() {
  input="$@"

  if [[ ! -z ${input} ]]; then
    rev <<< ${input}
  else
    echo ""
  fi
}

main "$@"
