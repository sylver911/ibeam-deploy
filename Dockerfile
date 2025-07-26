# Kiindulás a hivatalos IBeam image-ből  
FROM voyz/ibeam:latest

# Frissítjük a csomaglistát és telepítjük a socat eszközt  
USER root  
EXPOSE 5000