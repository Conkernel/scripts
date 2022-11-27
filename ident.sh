#!/bin/bash

# Averiguamos qué tipo de distro es (yum,apt,pacman...)
export distro="unknown"
# Yum
yum --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="yum"
Descargarse y ejecutar el fichero de usuario de yum
fi
# Apt
apt --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="apt"
Descargarse y ejecutar el fichero de usuario de apt
fi
#Arch
pacman --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="pacman"
Descargarse y ejecutar el fichero de usuario de pacman
fi

echo "No se ha podido identificar el tipo de distro"
