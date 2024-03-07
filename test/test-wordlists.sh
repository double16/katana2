#!/usr/bin/env bash

set -e

if [[ -f /opt/samurai/wordlists/fuzzdb/README.md ]] && [[ -f /opt/samurai/wordlists/seclists/README.md ]]; then
  exit 0
fi

katana install wordlists

test -f /opt/samurai/wordlists/fuzzdb/README.md
test -f /opt/samurai/wordlists/seclists/README.md
