#!/bin/bash
# Indítjuk az IB Gateway-t IBeam-en keresztül (háttérben)

# Megvárjuk, hogy a gateway valóban elinduljon a 5000-es porton
# (Egy egyszerű várakozás - pl. sleep - vagy aktív pollinggal ellenőrizhetjük a /iserver/auth/status választ.)
sleep 10

# Indítjuk a socat forwardert a Railway által megadott porton 
# $PORT változónak definiálva kell lennie Railway-en futásidőben
socat TCP-LISTEN:"${PORT}",reuseaddr,fork TCP:127.0.0.1:5000