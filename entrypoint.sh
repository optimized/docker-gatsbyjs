#!/bin/bash
set -e

if ! grep -q "gatsby build" /srv/package.json
then
echo "Run `gatsby new yoursitename`"
fi

exec "$@"
