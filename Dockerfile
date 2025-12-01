FROM voyz/ibeam:latest
USER root

# Hozd létre a könyvtárat
RUN mkdir -p /srv/inputs

# Másold csak a szükséges fájlokat (pl. conf.yaml)
COPY inputs/conf.yaml /srv/inputs/conf.yaml
