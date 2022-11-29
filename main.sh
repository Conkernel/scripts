#!/bin/bash
# Averiguamos qué tipo de distro es (yum,apt,pacman...)
mkdir /tmp/custom_script -p
cd /tmp/custom_script
export distro="unknown"
# Yum
yum --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="yum"
# Descargamos y ejecutamos script para equipos yum.
wget https://raw.githubusercontent.com/Conkernel/scripts/master/distros/yum/packages.sh 
chmod +x packages.sh
echo "ESCRIBE LA CONTRASEÑA DE ROOT"
su -c packages.sh
# Descargamos y ejecutamos script para usuarios en yum.
wget https://raw.githubusercontent.com/Conkernel/scripts/master/distros/yum/user.sh 
chmod +x user.sh
./user.sh
fi
##########
# Apt
apt --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="apt"
# Descargamos y ejecutamos script para equipos apt.
# ...
fi
#Arch
pacman --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
export distro="pacman"
# Descargamos y ejecutamos script para equipos pacman.
# ...
fi
# Si la distro no coincide con ninguna de las anteriores:
if [$distro="unknown"];then
    echo "No se ha podido identificar el tipo de distro"
fi
# fin de script ident.sh
echo "fin de script ident.sh"
