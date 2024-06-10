#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed wget base-devel git ttf-dejavu pipewire-jack rofi-wayland dunst swayidle swaybg waybar ly kitty caja atril eom engrampa mate-polkit firefox pavucontrol blueman fastfetch networkmanager fish kanshi ttc-iosevka-aile ttf-iosevkatermslab-nerd adobe-source-han-sans-otc-fonts kvantum qt6ct grim slurp swappy xdg-user-dirs pipewire pipewire-pulse pipewire-alsa wireplumber alsa-utils brightnessctl wlsunset wl-clipboard
git clone https://github.com/unwiredfromreality/dots-and-stuff.git
cd dots-and-stuff/
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -si
cd ..
yay -S --noconfirm labwc-git nwg-drawer-bin waypaper-git gtklock pokemon-colorscripts-git resources
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .themes ~/
sudo ln -s /usr/bin/rofi /usr/bin/dmenu
sudo systemctl enable ly.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable bluetooth.service
systemctl enable --user wireplumber.service
gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-GM
gsettings set org.gnome.desktop.interface cursor-size 32
gsettings set org.gnome.desktop.interface font-name 'Iosevka Aile'
gsettings set org.gnome.desktop.interface monospace-font-name 'IosevkaTermSlab Nerd Font'
gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Material-Dark
gsettings set org.gnome.desktop.interface icon-theme Gruvbox-Plus-Dark
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
xdg-user-dirs-update
xdg-mime default caja.desktop inode/directory
pacman -Qqd | sudo pacman --noconfirm -Rsu -
wget https://i.ibb.co/8B1tkBH/wallhaven-l87rxp.jpg -O ~/Pictures/wallpaper.jpg
echo "Rebooting system in 5 seconds..."
echo "After rebooting, you may now login to labwc session."
sleep 5
sudo reboot
