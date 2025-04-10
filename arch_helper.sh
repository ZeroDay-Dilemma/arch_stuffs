#!/bin/bash
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime  

hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

#pacman -Syu --needed base-devel git sudo networkmanager grub efibootmgr mtools dosfstools openssh wget curl
#pacman -S pipewire pipewire-pulse wireplumber pavucontrol sddm \
#			mesa vulkan-intel intel-media-driver \
#			nvidia nvidia-utils nvidia-settings



pacman -Syu --needed base-devel git sudo networkmanager grub efibootmgr mtools dosfstools openssh wget curl pipewire pipewire-pulse wireplumber pavucontrol sddm mesa vulkan-intel intel-media-driver nvidia nvidia-utils nvidia-settings xdg-desktop-portal-hyprland xdg-desktop-portal xdg-utils wayland wl-clipboard qt6-wayland qt5-wayland gtk3 gtk4 sddm-kcm waybar kitty foot thunar polkit-kde-agent rofi network-manager-applet grim slurp brightnessctl pamixer dunst libnotify neofetch pipewire-alsa pipewire-audio pipewire-jack gst-plugin-pipewire bluez bluez-utils blueman udiskie qt5-quickcontrols qt5-quickcontrols2 qt5-graphicaleffects hyprland dunst rofi-wayland swww hyprlock wlogout hyprpicker satty cliphist hyprsunset polkit-gnome xdg-user-dirs pacman-contrib parallel jq imagemagick qt5-imageformats ffmpegthumbs kde-cli-tools noto-fonts-emoji nwg-look qt5ct qt6ct kvantum kvantum-qt5 firefox dolphin ark unzip vim code nwg-displays fzf eza zsh zsh-theme-powerlevel10k-git starship fastfetch hypridle spotify neovim

systemctl enable --now pipewire.service  
systemctl enable NetworkManager.service
systemctl enable sddm


#tty login
#Add to the user’s ~/.bash_profile or ~/.zprofile:
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec Hyprland



grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg
echo "ROOT PASSWORD: "
passwd   -> root pass

echo "useradd -m -G wheel,audio,video,storage username"
echo "passwd username"

#pacman -S vim
#EDITOR=vim visudo
#%wheel ALL=(ALL:ALL) ALL 


