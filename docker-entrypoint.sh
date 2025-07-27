#!/bin/sh
set -e

# PORT környezeti változó kezelése (alapértelmezett: 8080)
PORT=${PORT:-8080}

# Konfigurációs fájl módosítása
echo "[ibeam] Replacing \${PORT} with $PORT in /srv/inputs/conf.yaml"
sed -i "s|\${PORT}|$PORT|g" /srv/inputs/conf.yaml

# VISSZAADJUK A VEZÉRLÉST AZ EREDETI IMAGE-NEK
# Nem futtatunk semmit, csak visszatérünk
# Az eredeti entrypoint és CMD fog futni
exec "$@"