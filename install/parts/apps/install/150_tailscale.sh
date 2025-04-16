sudo pacman -S --noconfirm --needed tailscale

flatpak install -uy flathub org.fkoehler.KTailctl

sudo systemctl enable tailscaled
sudo systemctl start tailscaled

sudo tailscale up --accept-routes --operator=krivig

