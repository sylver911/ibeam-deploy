FROM voyz/ibeam:latest

USER root
RUN apt-get update \
 && apt-get install -y socat \
 && rm -rf /var/lib/apt/lists/*

# Másoljuk át az egész konfigurációs mappát
COPY srv/inputs /srv/inputs

# Outputs könyvtár létrehozása
RUN mkdir -p /srv/outputs && chmod 777 /srv/outputs

# Entrypoint script másolása és futtathatóvá tétele
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Fontos: az eredeti CMD megőrzése!
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Ne add meg a CMD-t, hagyd az alap image-ből!