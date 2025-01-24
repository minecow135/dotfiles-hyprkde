# dotfiles-hyprkde
dotfiles used for arch with hyprland and kde plasma with SDDM

## Used
- arch
- sddm
- hyprland
- kde plasma

## Commands run
```bash
sudo pacman -S sddm plasma-desktop 
sudo systemctl enable sddm
sudo pacman -S kdeplasma-addons plasma-browser-integration plasma-disks bluedevil kde-cli-tools kde-gtk-config kpipewire plasma-nm plasma-pa plasma-vault powerdevil kscreen
sudo pacman -S --needed base-devel git man-db
mkdir tmp
cd tmp/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S hyprland-git
sudo pacman -S vim neovim vscode alacritty firefox
sudo pacman -S rofi-wayland hyprpolkitagent
sudo pacman -S kwallet-pam network-manager-applet kwalletmanager waybar qt6ct qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg hyprlock breeze-gtk nwg-look rofi-calc rofimoji rofi-rbw qt5-graphicaleffects flatpak python-beautifulsoup4 ttf-recursive-nerd jq hyprpaper
sudo pacman -S usbutils
yay -S wdisplays qt5-wayland qt6-wayland ttf-ms-win11-auto
yay -S bauh
sudo pacman -S pcmanfm-gtk3 avfs gvfs file-roller gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd
sudo pacman -S xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

sudo pacman -S zsh zsh-autosuggestions thefuck tmux zoxide fzf
sudo pacman -S fastfetch hyfetch

sudo pacman -S remmina freerdp
yay -S remmina-plugin-folder remmina-plugin-open
```

## dotfiles and themes used
- https://github.com/lr-tech/rofi-themes-collection
- https://github.com/end-4/dots-hyprland.git
- https://github.com/ChrisTitusTech/hyprland-titus
- https://github.com/Keyitdev/sddm-astronaut-theme
- https://github.com/catppuccin/catppuccin
