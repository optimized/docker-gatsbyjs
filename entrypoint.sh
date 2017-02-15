#!/bin/bash
set -e
alias gatsby="gatsby --port 80"
if ! grep -q "gatsby build" /srv/package.json
then
echo "Run 'new yoursitename'"
fi

exec "gatsby $@"
