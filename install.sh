#!/bin/bash

echo "[+] Actualizando paquetes..."
pkg update -y && pkg upgrade -y

echo "[+] Instalando paquetes necesarios..."
pkg install -y python git curl wget unzip

echo "[+] Clonando herramientas útiles..."
git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/commixproject/commix

echo "[+] Creando accesos rápidos..."
ln -sf ~/sqlmap/sqlmap.py /data/data/com.termux/files/usr/bin/sqlmap
ln -sf ~/commix/commix.py /data/data/com.termux/files/usr/bin/commix

chmod +x /data/data/com.termux/files/usr/bin/sqlmap
chmod +x /data/data/com.termux/files/usr/bin/commix

echo "[✓] Instalación completada sin verificación HWID."
