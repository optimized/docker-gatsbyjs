#!/bin/bash
set -e


if [ "$1" != "new" ] && ! grep -q "gatsby build" /srv/package.json
then
    echo "Run 'new yoursitename'"
    exit 1
fi

exec gatsby "$@"
