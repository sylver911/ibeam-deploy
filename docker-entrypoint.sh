#!/bin/sh
# Portszám beillesztése a conf.yaml-be a PORT változóból:
sed -i "s/^listenPort:.*/listenPort: ${PORT}/" /srv/inputs/conf.yaml
export IBEAM_GATEWAY_BASE_URL="https://localhost:${PORT}"
# Eredeti entrypoint indítása (ibeam_starter.py):
exec python /usr/local/bin/ibeam_starter.py