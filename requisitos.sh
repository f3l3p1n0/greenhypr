#!/bin/bash

set -e

# Actualizar sistema
sudo pacman -Syu --noconfirm

# Instalar yay desde AUR
cd /tmp
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si --noconfirm
cd ..
rm -rf yay-git

# Instalar paquetes desde AUR
yay -S --noconfirm \
  hyprland-git \
  kitty \
  wl-clip-persist \
  sddm-theme-sugar-candy-git \
  megatools \
  xwaylandvideobridge \
  eww \
  wl-gammarelay

# Instalar paquetes desde repos oficial
sudo pacman -S --noconfirm \
  wofi \
  sddm \
  zsh \
  lsd \
  bat \
  zsh-syntax-highlighting \
  zsh-autosuggestions \
  hypridle \
  hyprpaper \
  hyprlock \
  waybar \
  polkit \
  polkit-gnome \
  pavucontrol \
  slurp \
  grim \
  swappy \
  fastfetch \
  wget \
  unzip \
  pamixer \
  wl-clipboard

echo "✅ Instalación completada correctamente."
