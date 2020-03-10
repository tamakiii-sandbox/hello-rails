#!/usr/bin/env bash

set -e

if [ "$1" == '' ]; then
  bundle install
  rails server -b 0.0.0.0 -p 3000
else
  exec "$@"
fi

