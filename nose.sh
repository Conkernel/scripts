#!/bin/bash

# Desde aquí llamamos al resto de scripts

# Llamamos a ident.sh para identificar el tipo de distro
mkdir /tmp/custom_script -p
cd /tmp/custom_script
wget https://raw.githubusercontent.com/Conkernel/scripts/master/ident.sh
chmod +x ident.sh
./ident.sh
