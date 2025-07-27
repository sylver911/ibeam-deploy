FROM voyz/ibeam:latest

USER root
# Konfiguráció másolása
COPY srv/inputs /srv/inputs

# Outputs könyvtár
RUN mkdir -p /srv/outputs && chmod 777 /srv/outputs