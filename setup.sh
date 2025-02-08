#!/bin/bash

# Instalar dependencias
echo "Instalando dependencias..."
brew install nvim node npm git gcc fzf fd ripgrep coreutils bat curl lazygit fish tmux starship

# Crear directorios de configuración
echo "Creando directorios de configuración..."
mkdir -p ~/.config/nvim
mkdir -p ~/.config/fish
mkdir -p ~/.tmux

# Clonar este repositorio
echo "Clonando configuración de Gringodev.Dots..."
git clone https://github.com/Grincode/Gringodev.Dots.git /tmp/Gringodev.Dots

# Copiar la configuración
echo "Copiando configuración..."
cp -r /tmp/Gringodev.Dots/nvim/* ~/.config/nvim/
cp -r /tmp/Gringodev.Dots/fish/* ~/.config/fish/
cp -r /tmp/Gringodev.Dots/tmux/* ~/.tmux/
cp -r /tmp/Gringodev.Dots/starship/* ~/.config/

# Limpiar archivos temporales
echo "Limpiando archivos temporales..."
rm -rf /tmp/Gringodev.Dots

echo "¡Configuración completada! Ahora puedes usar Neovim, Fish Shell, Tmux y Starship con tu configuración personalizada."
