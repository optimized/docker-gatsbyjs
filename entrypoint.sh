#!/bin/bash
set -e

if [ "$1" == "update" ] || ! stat /srv/node_modules/
then

# remove node modules to prevent node-sass platform confilcts
rm -rf ./node_modules/

# installing node modules to make this image work in build servers
npm install

fi

if [ "$1" != "new" ] && ! grep -q "gatsby build" /srv/package.json
then

    echo "Run 'new yoursitename'"
    exit 1

fi

exec gatsby "$@"
