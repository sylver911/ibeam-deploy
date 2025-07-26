# Használjuk a hivatalos IBeam alapképet
FROM voyz/ibeam:latest

# Dokumentáljuk a portot, amelyen a gateway fut

# Nem írunk CMD-t vagy ENTRYPOINT-et, 
# hogy a base image beépített startere induljon el automatikusan
