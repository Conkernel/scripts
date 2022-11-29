#ª/bin/bash

# EJECUTAR COMO USUARIO

# Dotfies
echo "Descargando dotfiles..."
git clone https://github.com/Conkernel/.dotfiles.git ~/repos/dotfiles > /dev/null 2>&1
# PowerLevel10K
echo "Instalando powerlevel10k..."
git clone https://github.com/romkatv/powerlevel10k.git ~/repos/powerlevel10k > /dev/null 2>&1

# .config
echo "Configurando directorio .config..."
echo "Creamos ~/.config"
mkdir ~/.config

echo entramos en ~/repos/.dotfiles
cd ~/repos/dotfiles
echo hacemos "stow stow -v .config -t ~/.config"
stow -v .config -t ~/.config
# powerlevel10k
echo "Creamosd directorio ~/powerlevel10k"
mkdir  ~/powerlevel10k
echo "entramos enm ~/repos"
cd ~/repos/
echo "hacemos stow -v powerlevel10k -t ~/powerlevel10k"
stow -v powerlevel10k -t ~/powerlevel10k

#Zsh
echo " Configurando zsh..."
touch $HOME/.zshrc

cat << EOF > $HOME/.zshrc
if [[ -e $HOME/.config/zsh/.zshrc ]]; then
source $HOME/.config/zsh/.zshrc
fi
EOF

