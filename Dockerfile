FROM voyz/ibeam:latest

USER root
RUN apt-get update \
 && apt-get install -y socat \
 && rm -rf /var/lib/apt/lists/*

# Konfiguráció másolása
COPY srv/inputs /srv/inputs

# Outputs könyvtár
RUN mkdir -p /srv/outputs && chmod 777 /srv/outputs

# Entrypoint script másolása
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# FONTOS: ne írjuk felül az entrypointot!
# Csak futtassuk a scriptet, ami módosítja a konfigot
# majd a base image eredeti entrypointja fut le
CMD ["/bin/sh", "-c", "/docker-entrypoint.sh && exec $(eval echo \"$@\")"]