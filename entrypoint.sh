#!/bin/bash
set -e

if ! grep -q "gatsby build" /srv/package.json
then
echo "Run `new yoursitename`"
fi

#prepend gatsby to commands
set -- gatsby "$@"

exec "$@"
