sudo pacman -S --noconfirm --needed base-devel 

git clone https://aur.archlinux.org/yay.git /tmp/yay/
cd /tmp/yay

makepkg -si --noconfirm --needed

