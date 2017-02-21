#!/bin/bash
set -e

# if building the site or if node_modules does not exist
if [ "$1" == "build" ] || ! stat /srv/node_modules/
then

    # remove node modules to prevent node-sass platform confilcts
    rm -rf ./node_modules/

    # installing node modules to make this image work in build servers
    npm install

fi

# if gatsby is not installed mention this.
if [ "$1" != "new" ] && ! grep -q "gatsby build" /srv/package.json
then

    echo "Run 'new yoursitename'"
    exit 1

fi

exec gatsby "$@"
