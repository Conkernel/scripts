#!/bin/bash

# iniciamos script yum.sh
echo "iniciamos script yum.sh"


#Nos posicionamos en el directorio temporal de los scripts
cd /tmp/custom_script
# Actualizamos sistema
yum update -y
yum upgrade -y
# Paquetería
yum install -y dnf git stow neovim curl git make ncurses-devel gcc autoconf man
# Apps sin paquetería
# Bat
yum install wget http://repo.openfusion.net/centos7-x86_64/bat-0.7.0-1.of.el7.x86_64.rpm -y
# Zsh
dnf remove zsh -y
git clone -b zsh-5.8.1 https://github.com/zsh-users/zsh.git /tmp/zsh
cd /tmp/zsh
./Util/preconfig
./configure
make -j 20 install.bin install.modules install.fns
rm -rf /tmp/zsh
#command -v zsh | tee -a /etc/shells   # lo metemos en el script de usuarios?
#chsh -s $(which zsh)  # modificar ficher /etc/default/useradd para aplicar a todos los usuarios




