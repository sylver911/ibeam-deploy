# Használjuk a hivatalos IBeam alapképet
FROM voyz/ibeam:latest

# Megadjuk, hol legyenek az input konfigurációs fájlok
ENV IBEAM_INPUTS_DIR=/srv/inputs

# Dokumentáljuk a portot, amelyen a gateway fut
EXPOSE 5000

# Nem írunk CMD-t vagy ENTRYPOINT-et, 
# hogy a base image beépített startere induljon el automatikusan
