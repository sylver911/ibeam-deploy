FROM voyz/ibeam:latest

USER root
RUN apt-get update \
 && apt-get install -y socat \
 && rm -rf /var/lib/apt/lists/*

# ide másolod be az egész srv/inputs-et, benne a conf.yaml‑lal
COPY srv/inputs /srv/inputs

# outputs könyvtár
RUN mkdir -p /srv/outputs && chmod 777 /srv/outputs

# a te előfeldolgozó script
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# OVERRIDE ENTRYPOINT! → először a te script, ami sed-del javít,
# aztán átadja a vezérlést az eredeti IBeam starternek
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# CMD‑et ne add meg, hagyd, hogy a base image CMD-je fusson
