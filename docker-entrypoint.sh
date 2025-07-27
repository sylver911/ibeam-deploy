#!/bin/sh
set -e

echo "[ibeam] replacing \${PORT} → $PORT in /srv/inputs/conf.yaml"
/usr/bin/sed -i "s|\${PORT}|${PORT}|g" /srv/inputs/conf.yaml

# átadjuk a vezérlést az eredeti starternek
exec python /usr/local/bin/ibeam_starter.py
