#!/bin/bash
# Averiguamos qué tipo de distro es (yum,apt,pacman...)
mkdir /tmp/custom_script -p
cd /tmp/custom_script
distro="unknown"
# Yum
yum --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
distro="yum"
# Descargamos y ejecutamos script para equipos yum.
wget https://raw.githubusercontent.com/Conkernel/scripts/master/distros/yum/packages.sh 
chmod +x packages.sh
echo
echo "ESCRIBE LA CONTRASEÑA DE ROOT"
echo
su -c /tmp/custom_script/packages.sh
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
distro="apt"
# Descargamos y ejecutamos script para equipos apt.
# ...
fi
#Arch
pacman --version > /dev/null 2>&1
retVal=$?
if [ $retVal -eq 0 ]; then
distro="pacman"
# Descargamos y ejecutamos script para equipos pacman.
# ...
fi
# Si la distro no coincide con ninguna de las anteriores:
echo "La distro es $distro"
if [ "$distro" == "unknown" ];then
    echo "No se ha podido identificar el tipo de distro"
fi
# fin de script ident.sh
echo "fin de script ident.sh"
