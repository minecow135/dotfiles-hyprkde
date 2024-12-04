# dotfiles-hyprkde
dotfiles used for arch with hyprland and kde plasma with SDDM

## Used
- arch
- sddm
- hyprland
- kde plasma

## Commands run
```bash
sudo pacman -S plasma-desktop 
sudo systemctl enable sddm
sudo pacman -S kdeplasma-addons plasma-browser-integration plasma-disks bluedevil kde-cli-tools kde-gtk-config kpipewire plasma-nm plasma-pa plasma-vault powerdevil kscreen
sudo pacman -S --needed base-devel git
mkdir tmp
cd tmp/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S hyprland-git
sudo pacman -S vim vscode alacritty firefox
sudo pacman -S rofi
sudo pacman -S kwallet-pam network-manager-applet kwalletmanager waybar qt6ct pcmanfm-gtk3 hyprlock breeze-gtk nwg-look rofi-calc zsh qt5-graphicaleffects flatpak
yay -S wdisplays
yay -S bauh
```

## dotfiles used
- https://github.com/lr-tech/rofi-themes-collection
- https://github.com/end-4/dots-hyprland.git
- https://github.com/ChrisTitusTech/hyprland-titus
