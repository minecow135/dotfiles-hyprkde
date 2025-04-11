sudo pacman -S sddm plasma-desktop 
sudo systemctl enable sddm
sudo pacman -S kdeplasma-addons plasma-browser-integration plasma-disks bluedevil kde-cli-tools kde-gtk-config kpipewire plasma-nm plasma-pa plasma-vault powerdevil kscreen
sudo pacman -S --needed base-devel git man-db
mkdir tmp
cd tmp/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sudo pacman -S hyprland
sudo pacman -S vim neovim vscode alacritty firefox
sudo pacman -S rofi-wayland hyprpolkitagent
sudo pacman -S kwallet-pam network-manager-applet kwalletmanager waybar qt6ct qt6-svg qt6-virtualkeyboard qt6-multimedia-ffmpeg hyprlock breeze-gtk nwg-look rofi-calc rofimoji rofi-rbw qt5-graphicaleffects flatpak python-beautifulsoup4 ttf-recursive-nerd jq hyprpaper noto-fonts-cjk
sudo pacman -S usbutils
yay -S wdisplays qt5-wayland qt6-wayland ttf-ms-win11-auto
yay -S bauh
sudo pacman -S pcmanfm-gtk3 avfs gvfs file-roller gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd
sudo pacman -S xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
sudo pacman -S swaync cups wl-clipboard
sudo systemctl enable cups
yay -S grimblast-git

sudo pacman -S zsh zsh-autosuggestions thefuck tmux zoxide fzf
sudo pacman -S fastfetch hyfetch

sudo pacman -S remmina freerdp chromium tailscale
yay -S remmina-plugin-folder remmina-plugin-open

sudo systemctl enable tailscaled
sudo systemctl start tailscaled
sudo tailscale up --accept-routes
sudo tailscale set --operator=$USER
