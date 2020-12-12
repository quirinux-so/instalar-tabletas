#!/bin/bash

# Nombre:	instalar-tabletas.sh
# Autor:	Charlie Martínez® <cmartinez@quirinux.org>
# Licencia:	https://www.gnu.org/licenses/gpl-3.0.txt
# Descripción:	Instala controladores libres para Wacom y Genius en GNU/Linux
# Versión:	1.00

bold=$(tput bold)
normal=$(tput sgr0)
${bold}
${normal}

clear

echo " -----------------------------------------------------------------------------
 QUIRINUX GENERAL: INSTALAR CONTROLADORES PARA TABLETAS WACOM
 -----------------------------------------------------------------------------
 Instalar controladores libres para las tabletas gráficas de la marca Wacom
 y/o Genius en GNU/Linux Debian y Derivadas. 


 







 1 Instalar controladores sólo para tabletas Wacom
 2 Instalar controladores sólo para tabletas Genius
 3 Instalar controladores para Wacom y Genius
 0 Salir.



"

read -p " Tu respuesta-> " opc
 
case $opc in

"1") 

clear

# INSTALAR CONTROLADORES DE TABLETAS GRÁFICAS WACOM

sudo apt-get update -y
sudo apt-get install build-essential autoconf linux-headers-$uname -r
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/Cp4yR3tt9gHeFEH/download' -O /opt/tmp/input-wacom-0.46.0.tar.bz2
cd /opt/tmp
tar -xjvf /opt/tmp/input-wacom-0.46.0.tar.bz2 
cd input-wacom-0.46.0 
if test -x ./autogen.sh; then ./autogen.sh; else ./configure; fi && make && sudo make install || echo "Build Failed"
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y

# Borrar archivos temporales 

sudo rm -rf /opt/tmp/*

clear

echo " -----------------------------------------------------------------------------
 QUIRINUX GENERAL: CONTROLADORES INSTALADOS
 -----------------------------------------------------------------------------
 Controladores libres para Wacom instalados.
 


 







 
 
 
 



"

;;

"2")

clear

# INSTALAR CONTROLADORES DE TABLETAS GRÁFICAS GENIUS

sudo apt-get update -y
sudo mkdir -p /opt/tmp/quirinux-genius
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/LD8wnWefdNpDsSo/download' -O /opt/tmp/quirinux-genius/quirinux-genius-1.0-q2_amd64.deb
sudo dpkg -i /opt/tmp/quirinux-genius/quirinux-genius-1.0-q2_amd64.deb
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/X6S6zKycQEy9ygd/download' -O /opt/tmp/quirinux-genius/wizardpen_0.7.0-alpha2_i386.deb
sudo dpkg -i /opt/tmp/quirinux-genius/wizardpen_0.7.0-alpha2_i386.deb
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y


# Borrar archivos temporales 

sudo rm -rf /opt/tmp/*

clear

echo " -----------------------------------------------------------------------------
 QUIRINUX GENERAL: CONTROLADORES INSTALADOS
 -----------------------------------------------------------------------------
 Controladores libres para Genius instalados.
 


 







 
 
 
 



"
;;

"3")

# INSTALAR CONTROLADORES DE TABLETAS GRÁFICAS WACOM

sudo apt-get update -y
sudo apt-get install build-essential autoconf linux-headers-$uname -r
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/Cp4yR3tt9gHeFEH/download' -O /opt/tmp/input-wacom-0.46.0.tar.bz2
cd /opt/tmp
tar -xjvf /opt/tmp/input-wacom-0.46.0.tar.bz2 
cd input-wacom-0.46.0 
if test -x ./autogen.sh; then ./autogen.sh; else ./configure; fi && make && sudo make install || echo "Build Failed"
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y

# INSTALAR CONTROLADORES DE TABLETAS GRÁFICAS GENIUS

sudo apt-get update -y
sudo mkdir -p /opt/tmp/quirinux-genius
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/LD8wnWefdNpDsSo/download' -O /opt/tmp/quirinux-genius/quirinux-genius-1.0-q2_amd64.deb
sudo dpkg -i /opt/tmp/quirinux-genius/quirinux-genius-1.0-q2_amd64.deb
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y
sudo wget  --no-check-certificate 'http://my.opendesktop.org/s/X6S6zKycQEy9ygd/download' -O /opt/tmp/quirinux-genius/wizardpen_0.7.0-alpha2_i386.deb
sudo dpkg -i /opt/tmp/quirinux-genius/wizardpen_0.7.0-alpha2_i386.deb
sudo apt-get install -f -y
sudo apt-get autoremove --purge -y

# Borrar archivos temporales 

sudo rm -rf /opt/tmp/*

clear

echo " -----------------------------------------------------------------------------
 QUIRINUX GENERAL: CONTROLADORES INSTALADOS
 -----------------------------------------------------------------------------
 Controladores libres para Wacom y Genius instalados.
 


 







 
 
 
 



"
;;

"0")

clear

echo " -----------------------------------------------------------------------------
 QUIRINUX GENERAL: NO SE REALIZARON CAMBIOS
 -----------------------------------------------------------------------------
 Has salido el programa sin haber instalado nada.
 


 







 
 
 
 



"

exit 0

;; 

esac 

