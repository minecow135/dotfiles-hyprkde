sudo pacman -S --noconfirm --needed qemu libvirt virt-manager

sudo usermod -aG libvirt,kvm $USER

sudo systemctl start libvirtd
sudo systemctl enable libvirtd

