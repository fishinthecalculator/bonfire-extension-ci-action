#!/bin/sh
set -eu

main() {
  echo "" # see https://github.com/actions/toolkit/issues/168

  cd "${GITHUB_WORKSPACE}"

  # install dependencies
  just deps-get

  # run tests
  just test

}

main
