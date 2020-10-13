#! /bin/bash

set -e

mkdir -p /var/lib/entrypoint
echo "$@" | sed -e "s*^$0**" > /var/lib/entrypoint/args
echo "Arguments: $(cat /var/lib/entrypoint/args)"
declare -px | grep '=' | sed -e 's/^declare -x //' | grep -v '^\(HOME\|TERM\|USER\|LOGNAME\|PWD\|PATH\|SHLVL\)=' > /var/lib/entrypoint/env
echo "Environment: $(cat /var/lib/entrypoint/env)"

exec /usr/local/bin/boot-debian-base
