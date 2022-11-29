#!/bin/bash

# Desde aquí llamamos al resto de scripts

# Llamamos a main.sh para identificar el tipo de distro
mkdir /tmp/custom_script -p
cd /tmp/custom_script
wget https://raw.githubusercontent.com/Conkernel/scripts/master/ident.sh
chmod +x main.sh
./main.sh
