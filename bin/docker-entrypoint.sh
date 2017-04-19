#!/usr/bin/env sh

for f in /etc/docker-entrypoint.d/*; do
    if [ -f "$f" ]; then
        echo "running $f"; . "$f"
    fi
done

exec "$@"
