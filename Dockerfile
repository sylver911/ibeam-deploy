# Használjuk a hivatalos IBeam alapképet
FROM voyz/ibeam:latest

# Dokumentáljuk a portot, amelyen a gateway fut
EXPOSE 5000

# Nem írunk CMD-t vagy ENTRYPOINT-et, 
# hogy a base image beépített startere induljon el automatikusan
