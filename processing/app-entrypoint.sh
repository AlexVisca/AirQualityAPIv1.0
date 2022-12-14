#!/bin/bash
set -e
# wait for the server to be up
if [ -n "$SERVER_HOST" ]; then
    /usr/bin/wait-for-it "$SERVER_HOST:${SERVER_PORT:-80}/storage" -t 120
fi
# run the main container command
exec "$@"