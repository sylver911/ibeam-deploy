# Kiindulás a hivatalos IBeam image-ből  
FROM voyz/ibeam:0.5.2-rc1

# Frissítjük a csomaglistát és telepítjük a socat eszközt  
USER root  
EXPOSE 5000