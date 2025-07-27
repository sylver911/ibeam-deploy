#!/bin/sh
set -e

# Ha PORT nincs beállítva, alapértelmezett érték
PORT=${PORT:-8080}

echo "[ibeam] replacing \${PORT} → $PORT in /srv/inputs/conf.yaml"

# Javított sed: pontos escapeles és változókezelés
sed -i "s|\${PORT}|${PORT}|g" /srv/inputs/conf.yaml

# Átadjuk a vezérlést az eredeti starternek
exec python /usr/local/bin/ibeam_starter.py "$@"