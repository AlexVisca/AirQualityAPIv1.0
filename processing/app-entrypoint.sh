#!/bin/bash
set -e
# wait for the server to be up
if [ -n "$SERVER_HOST" ]; then
    /usr/bin/wait-for-it "$SERVER_HOST:${SERVER_PORT:-8090}"
fi
# run the main container command
exec "$@"