# Kiindulás a hivatalos IBeam image-ből  
FROM voyz/ibeam:latest

# Frissítjük a csomaglistát és telepítjük a socat eszközt  
USER root  
RUN apt-get update && apt-get install -y socat && rm -rf /var/lib/apt/lists/*

# Saját gateway konfiguráció másolása az inputs könyvtárba  
# (Kikapcsolt SSL és opcionálisan nyitottabb IP engedélyezés)  
COPY srv/inputs/conf.yaml /srv/inputs/conf.yaml

