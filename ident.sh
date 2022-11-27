#!/bin/bash

# Averiguamos qué tipo de distro es (yum,apt,pacman...)
export distro="unknown"
# Yum
yum --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="yum"
# Descargamos y ejecutamos script para equipos yum.
# ...
return;
Descargarse y ejecutar el fichero de usuario de yum
fi
# Apt
apt --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="apt"
# Descargamos y ejecutamos script para equipos apt.
# ...
return;
fi
#Arch
pacman --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="pacman"
# Descargamos y ejecutamos script para equipos pacman.
# ...
return;
fi

echo "No se ha podido identificar el tipo de distro"
